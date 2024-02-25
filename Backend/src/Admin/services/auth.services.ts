
import prisma_client from "../../config/prisma";
import { AuthFailureError, BadRequestError } from "../../core/ApiError";
import { comparePassword } from "../../core/utils";
import * as authMethods from "../methods/auth.methods"
import { adminRegisterInterface, createAdminAccessPermissionsInterface, createAdminRolesInterface } from "../models/admin.models";




// Roles and Permissions
 const createPermissionService = async (
    permissionData: createAdminAccessPermissionsInterface
  ) => {
    if(!permissionData?.accessPermissionName){
        throw new BadRequestError("Invalid input")
    }
    const createPermissionResponse = await authMethods.createPermissionMethod(
      permissionData
    );
    return createPermissionResponse;
  };

  const createRoleService = async (roleData: createAdminRolesInterface) => {
    if(!roleData?.roleName || !roleData?.permissions){
        throw new BadRequestError("Invalid input")
    }
    const createRoleResponse = await authMethods.createRoleMethod(roleData);
    return createRoleResponse;
  };

  const fetchAllPermissionService = async () => {
    const fetchAllPermissionResponse =
      await authMethods.fetchAllPermissionMethod();
    return fetchAllPermissionResponse;
  };

  const fetchAllRoleService = async () => {
    const fetchAllRoleResponse = await authMethods.fetchAllRoleMethod();
    return fetchAllRoleResponse;
  };



// Admin Users
const adminRegisterService = async (
    adminRegistrationData: adminRegisterInterface
  ) => {
    const registrationResponse = await authMethods.RegisterAdminMethod(
      adminRegistrationData
    );
    return registrationResponse;
  };

  const adminLoginService = async (username: string, password: string) => {
    const admin = await prisma_client.admin_users.findUnique({ where: { userName:username } });
  
    if (!admin || !(await comparePassword(password, admin.password))) {
      throw new AuthFailureError('Invalid username or password');
      
    }
  
    return admin;
  };


  export {
    createPermissionService,
    createRoleService,
    fetchAllPermissionService,
    fetchAllRoleService,
    adminRegisterService,
    adminLoginService
  }