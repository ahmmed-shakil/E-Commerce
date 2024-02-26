import { NextFunction, Request, Response } from "express";
import { InternalErrorResponse, SuccessResponse } from "../../core/ApiResponse";
import * as AuthService from "../services/auth.services"
import { AuthFailureError, BadRequestError } from "../../core/ApiError";
import { comparePassword } from "../../core/utils";
import JWT, { JwtPayload } from "../../core/JWT";
import { cookieOptions } from "../../utils/cookieOptions";


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


// vendor Users
const vendorRegisterController = async (
    req: Request,
    res: Response,
    next: NextFunction,
  ) => {
    try {
      const vendorRegisterData = req.body;
      const userRegistrationResponse =
      await AuthService.vendorRegisterService(vendorRegisterData);
      return userRegistrationResponse.send(res);
    } catch (error) {
      console.log('🚀 ~ vendorRegisterController ~ error:', error);
      next(error);
    }
  };

  const vendorLoginController = async (
    req: Request,
    res: Response,
    next: NextFunction,
  ) => {
    try {
      const { username, password } = req.body;
  
      const vendor = await AuthService.vendorLoginService(username, password);
  
      if (!vendor) {
        new AuthFailureError(`user doesn't exist`);
        return;
      }
  
      const isPasswordValid = await comparePassword(password, vendor.password);
  
      if (!isPasswordValid) {
        new AuthFailureError('Incorrect password')
        return;
      }
      if (isPasswordValid && vendor.id) {
        const id = vendor.id;
        const issuer = 'SMART-API';
        const audience = 'SMART-SAAS';
        const subject = id.toString();
        const param = vendor.userName;
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
    createRoleController,
    fetchAllRoleController,
    vendorRegisterController,
    vendorLoginController
}