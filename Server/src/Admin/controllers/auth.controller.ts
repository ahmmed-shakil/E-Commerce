import { NextFunction, Request, Response } from "express";
import { InternalErrorResponse, SuccessMsgResponse, SuccessResponse } from "../../core/ApiResponse";
import * as AuthService from "../services/auth.services"
import { AuthFailureError, BadRequestError } from "../../core/ApiError";
import { comparePassword } from "../../core/utils";
import JWT, { JwtPayload } from "../../core/JWT";
import { cookieOptions } from "../../utils/cookieOptions";
import prisma_client from "../../config/prisma";
import { generateFromEmail, generateUsername } from "unique-username-generator";

const checkNewRoleValidityController = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const { roleName } = req.body;

    const formattedRoleName = roleName.toLowerCase().replace(/\s/g, '');

    const allRoles = await prisma_client.admin_roles.findMany();
    
    const roleExists = allRoles.some((role) => role.roleName.toLowerCase().replace(/\s/g, '') === formattedRoleName);

    if (roleExists) {
      throw new BadRequestError("Role already exists");
    }

    return new SuccessMsgResponse("Role is valid").send(res);
  } catch (error) {
    next(error);
  }
};

  const createRoleController = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const roleData = req.body;
       
        const createRoleResponse = await AuthService.createRoleService(roleData);
        return createRoleResponse?.send(res)
    } catch (error) { 
        console.log('🚀 ~ createRoleController ~ error:', error);
        next()
    }
  };


const fetchAllRoleController = async (req: Request, res: Response, next:NextFunction) => {
    try {
        const fetchAllRoleResponse = await AuthService.fetchAllRoleService();
         return fetchAllRoleResponse.send(res) 
    } catch (error) {
        console.log('🚀 ~ fetchAllRoleController ~ error:', error);
        next()
    }
  };


// Admin Users
const checkNewAdminEmailValidityController = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const { email } = req.body;

    const formattedValue = email.toLowerCase().trim();
    const admin = await prisma_client.admin_users.findUnique({
      where: {email:formattedValue},
    });
    
    if (admin?.id) {
      throw new BadRequestError(`Email already exists`);
    }

    // Generate a unique username
    let username;
    let isUsernameUnique = false;

    while (!isUsernameUnique) {
      username = generateFromEmail(formattedValue, 3);

      const existingUsername = await prisma_client.admin_users.findUnique({
        where: { userName:username },
      });

      isUsernameUnique = !existingUsername;
    }

    return new SuccessResponse(`Email is valid`, username).send(res);
  } catch (error) {
    next(error);
  }
};
const checkNewAdminPhoneValidityController = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const { phoneNumber } = req.body;

    const formattedValue = phoneNumber.toLowerCase().trim();
    const admin = await prisma_client.admin_users.findUnique({
      where: {email:formattedValue},
    });
    
    if (admin?.id) {
      throw new BadRequestError(`Phone Number already exists`);
    }

    return new SuccessMsgResponse(`Phone Number is valid`).send(res);
  } catch (error) {
    next(error);
  }
};
const checkNewAdminUsernameValidityController = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const { userName } = req.body;

    const formattedValue = userName.trim();
    const admin = await prisma_client.admin_users.findUnique({
      where: {userName:userName},
    });
    
    if (admin?.id) {
      throw new BadRequestError(`Username already exists`);
    }

    return new SuccessMsgResponse(`Username is valid`).send(res);
  } catch (error) {
    next(error);
  }
};



const adminRegisterController = async (
    req: Request,
    res: Response,
    next: NextFunction,
  ) => {
    try {
      const adminRegisterData = req.body;
      const userRegistrationResponse =
      await AuthService.adminRegisterService(adminRegisterData);
      return userRegistrationResponse.send(res);
    } catch (error) {
      console.log('🚀 ~ adminRegisterController ~ error:', error);
      next(error);
    }
  };

  const adminLoginController = async (
    req: Request,
    res: Response,
    next: NextFunction,
  ) => {
    try {
      const { userName, password } = req.body;
  
      const admin = await AuthService.adminLoginService(userName, password);
  
      if (!admin) {
       throw new AuthFailureError(`user doesn't exist`);
      }
  
      const isPasswordValid = await comparePassword(password, admin.password);
  
      if (!isPasswordValid) {
       throw new AuthFailureError('Incorrect password')
      }
      if (isPasswordValid && admin.id) {
        const id = admin.id;
        const issuer = 'SMART-API';
        const audience = 'SMART-SAAS';
        const subject = id.toString();
        const param = admin.userName;
        const validity = 3600;
        // Create JwtPayload instance
        const payload = new JwtPayload(issuer, audience, subject, param, validity);

       // Generate JWT
       const token = await JWT.encode(payload);
        return res.status(200).
        cookie('user_access_token', token, cookieOptions)
          .json({ Success: true, message:'Login successful' });
      }
    } catch (error) {
      console.log('Error:',error);
      next(error);
    }
  };


export {
    createRoleController,
    fetchAllRoleController,
    adminRegisterController,
    adminLoginController,
    checkNewRoleValidityController,
    checkNewAdminEmailValidityController,
    checkNewAdminPhoneValidityController,
    checkNewAdminUsernameValidityController
}