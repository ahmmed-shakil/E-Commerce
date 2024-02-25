import express, { Request, Response } from 'express';
import { SuccessMsgResponse } from '../core/ApiResponse';
const adminRouter = express.Router();
import * as authController from "./controllers/auth.controller"

adminRouter.get("/", (req,res)=>{
    const message = "Admin routes are working";
    new SuccessMsgResponse(message).send(res);
})

// Roles and Permissions
adminRouter.route("/permission").post(authController.createPermissionController).get(authController.fetchAllPermissionController)
adminRouter.route("/role").post(authController.createRoleController).get(authController.fetchAllRoleController)


// Admin User
adminRouter.post("/register", authController.adminRegisterController)
adminRouter.post("/login", authController.adminLoginController)



export { adminRouter };