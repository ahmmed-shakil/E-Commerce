import { NextFunction, Request, Response } from "express";
import { InternalErrorResponse, SuccessResponse } from "../../core/ApiResponse";
import * as AuthService from "../services/auth.services"
import { AuthFailureError, BadRequestError } from "../../core/ApiError";
import { comparePassword } from "../../core/utils";
import JWT, { JwtPayload } from "../../core/JWT";
import { cookieOptions } from "../../utils/cookieOptions";



// Roles and Permissions
const createPermissionController = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const permissionData = req.body;
      
        const createPermissionResponse = await AuthService.createPermissionService(
         permissionData
        );
        
        return createPermissionResponse?.send(res)
        
    } catch (error) {
        console.log('🚀 ~ createPermissionController ~ error:', error);
        next()
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

  const fetchAllPermissionController = async (req: Request, res: Response, next: NextFunction) => {
   try {
    const fetchAllPermissionResponse =
    await AuthService.fetchAllPermissionService();
    return fetchAllPermissionResponse.send(res)
   } catch (error) {
    console.log('🚀 ~ fetchAllPermissionController ~ error:', error);
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
      const { username, password } = req.body;
  
      const admin = await AuthService.adminLoginService(username, password);
  
      if (!admin) {
        new AuthFailureError(`user doesn't exist`);
        return;
      }
  
      const isPasswordValid = await comparePassword(password, admin.password);
  
      if (!isPasswordValid) {
        new AuthFailureError('Incorrect password')
        return;
      }
      if (isPasswordValid && admin.id) {
        const id = admin.id;
        const roleName = admin.admin_rolesId;
        const issuer = 'POG-API';
        const audience = 'POG-SAAS';
        const subject = id.toString();
        const param = admin.userName;
        const validity = 3600;
        // Create JwtPayload instance
      const payload = new JwtPayload(issuer, audience, subject, param, validity);

       // Generate JWT
       const token = await JWT.encode;
        return res.
        cookie('user_access_token', token, cookieOptions)
          .json({ Success: 'Login successful' });
      }
    } catch (error) {
      console.log('Error:');
      next(error);
    }
  };


export {
    createPermissionController,
    createRoleController,
    fetchAllPermissionController,
    fetchAllRoleController,
    adminRegisterController,
    adminLoginController
}