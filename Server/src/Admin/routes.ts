import express, { Request, Response } from 'express';
import { SuccessMsgResponse } from '../core/ApiResponse';
const adminRouter = express.Router();
import * as authController from "./controllers/auth.controller"
import { isRequestValidated, validateAdminLoginRequest, validateAdminRegisterEmailRequest, validateAdminRegisterPhoneRequest, validateAdminRegisterRequest, validateAdminRegisterUsernameRequest, validateCreateAdminRoleRequest } from './middleware/adminValidator';

adminRouter.get("/", (req,res)=>{
    const message = "Admin routes are working";
    new SuccessMsgResponse(message).send(res);
})


// Roles and Permissions
adminRouter.post("/check-role",validateCreateAdminRoleRequest,isRequestValidated, authController.checkNewRoleValidityController)
adminRouter.route("/role").post(validateCreateAdminRoleRequest,isRequestValidated,authController.createRoleController).get(authController.fetchAllRoleController)


// Admin User
adminRouter.post("/check-email",validateAdminRegisterEmailRequest,isRequestValidated, authController.checkNewAdminEmailValidityController)
adminRouter.post("/check-phone",validateAdminRegisterPhoneRequest,isRequestValidated, authController.checkNewAdminPhoneValidityController)
adminRouter.post("/check-username", validateAdminRegisterUsernameRequest,isRequestValidated, authController.checkNewAdminUsernameValidityController)
adminRouter.post("/register",validateAdminRegisterRequest,isRequestValidated, authController.adminRegisterController)
adminRouter.post("/login",validateAdminLoginRequest,isRequestValidated, authController.adminLoginController)



export { adminRouter };