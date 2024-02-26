
import prisma_client from "../../config/prisma";
import { AuthFailureError, BadRequestError } from "../../core/ApiError";
import { FailureMsgResponse } from "../../core/ApiResponse";
import { comparePassword } from "../../core/utils";
import * as authMethods from "../methods/auth.methods"
import { adminRegisterInterface, createAdminRolesInterface } from "../models/admin.models";




// Roles and Permissions
  
  const createRoleService = async (roleData: createAdminRolesInterface) => {
   
    const createRoleResponse = await authMethods.createRoleMethod(roleData);
    return createRoleResponse;
  };


  const fetchAllRoleService = async () => {
    const fetchAllRoleResponse = await authMethods.fetchAllRoleMethod();
    return fetchAllRoleResponse;
  };



// Admin Users
const adminRegisterService = async (
    adminRegistrationData: adminRegisterInterface
  ) => {
    const {admin_rolesId}= adminRegistrationData;
    const roleExists = await prisma_client.admin_roles.findUnique({where:{id:admin_rolesId}});
    if(!roleExists){
      throw new BadRequestError("Role doesn't exist")
    }
    const registrationResponse = await authMethods.RegisterAdminMethod(
      adminRegistrationData
    );
    return registrationResponse;
  };

  const adminLoginService = async (username: string, password: string) => {
    const admin = await prisma_client.admin_users.findUnique({ where: { userName:username } });
    return admin;
  };


  export {
    createRoleService,
    fetchAllRoleService,
    adminRegisterService,
    adminLoginService
  }