
import prisma_client from "../../config/prisma";
import { AuthFailureError, BadRequestError } from "../../core/ApiError";
import { comparePassword } from "../../core/utils";
import * as authMethods from "../methods/auth.methods"
import { createVendorRolesInterface, vendorRegistrationInterface } from "../models/vendor.model";




// Roles and Permissions


  const createRoleService = async (roleData: createVendorRolesInterface) => {
    if(!roleData?.roleName){
        throw new BadRequestError("Invalid input")
    }
    const createRoleResponse = await authMethods.createRoleMethod(roleData);
    return createRoleResponse;
  };


  const fetchAllRoleService = async () => {
    const fetchAllRoleResponse = await authMethods.fetchAllRoleMethod();
    return fetchAllRoleResponse;
  };



// Admin Users
const vendorRegisterService = async (
    adminRegistrationData: vendorRegistrationInterface
  ) => {
    const registrationResponse = await authMethods.RegisterVendorMethod(
      adminRegistrationData
    );
    return registrationResponse;
  };

  const vendorLoginService = async (username: string, password: string) => {
    const admin = await prisma_client.admin_users.findUnique({ where: { userName:username } });
  
    if (!admin || !(await comparePassword(password, admin.password))) {
      throw new AuthFailureError('Invalid username or password');
      
    }
  
    return admin;
  };


  export {
    createRoleService,
    fetchAllRoleService,
    vendorRegisterService,
    vendorLoginService
  }