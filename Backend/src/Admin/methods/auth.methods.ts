import prisma_client from "../../config/prisma";
import { BadRequestError } from "../../core/ApiError";
import { BadRequestResponse, FailureMsgResponse, InternalErrorResponse,SuccessResponse } from "../../core/ApiResponse";
import { hashPassword } from "../../core/utils";
import { adminRegisterInterface, createAdminAccessPermissionsInterface, createAdminRolesInterface } from "../models/admin.models";



// Roles and Permissions
  const createPermissionMethod = async (
    permissionData: createAdminAccessPermissionsInterface
  ) => {
    
    const existingPermission = await prisma_client.admin_permissions.findFirst({
        where: { accessPermissionName: permissionData.accessPermissionName },
      });
      if (existingPermission) {
        throw new BadRequestError('Permission already exists');
      }
    const permissionResponse =
        await prisma_client.admin_permissions.create({
          data: { ...permissionData },
        });
      if (!permissionResponse) {
        throw new BadRequestError('Failed to create new admin permission')
      }
      return new SuccessResponse("Created new admin permission", permissionResponse)
  };
  const createRoleMethod = async (roleData: createAdminRolesInterface) => {
    
    const existingRole = await prisma_client.admin_roles.findFirst({
        where: { roleName: roleData.roleName },
      });
      if (existingRole) {
        throw new BadRequestError('Role already exists');
      }
    const permissions = roleData.permissions ? roleData.permissions : [];
    const roleResponse = await prisma_client.admin_roles.create({
      data: {
        roleName: roleData.roleName,
        admin_permissions: {
          connect: permissions,
        },
      },
    });
    if (!roleResponse) {
      throw new BadRequestError('Failed to create new admin role')
    }
    return new SuccessResponse("Created new admin role", roleResponse)
  };


  const fetchAllPermissionMethod = async () => {
    const permissionFetched =
        await prisma_client.admin_permissions.findMany({});
      if (!permissionFetched) {
        throw new BadRequestError("Failed to fetch admin permissions")
      }

      return new SuccessResponse("Fetched admin permissions", permissionFetched)
  };

  const fetchAllRoleMethod = async () => {
    const roleFetched = await prisma_client.admin_roles.findMany({
        include: { admin_permissions: true },
      });
      if (!roleFetched) {
        throw new BadRequestError("Failed to fetch admin roles")
      }

      return new SuccessResponse("Fetched admin roles", roleFetched)

  };


//   Admin User

const RegisterAdminMethod = async (
    adminRegistrationData: adminRegisterInterface
  ) => {
    console.log(adminRegistrationData, "adminRegistrationData");
    const existingUsername = await prisma_client.admin_users.findFirst({
        where: { userName: adminRegistrationData.userName },
      });
      if (existingUsername) {
        throw new BadRequestError('Admin not registered: Username Already Taken');
      }
    const existingEmail = await prisma_client.admin_users.findFirst({
        where: { email: adminRegistrationData.email },
      });
      if (existingEmail) {
        throw new BadRequestError('Admin not registered: Email Already Taken');
      }
    const existingPhoneNumber = await prisma_client.admin_users.findFirst({
        where: { phoneNumber: adminRegistrationData.phoneNumber },
      });
      if (existingPhoneNumber) {
        throw new BadRequestError('Admin not registered: Phone Number Already Taken');
      }
    const hashedpass: string = await hashPassword(
      adminRegistrationData.password
    );
    const registeredUser = await prisma_client.admin_users.create({
      data: { ...adminRegistrationData, password: hashedpass },
    });
    if (!registeredUser) {
      throw new BadRequestError("Failed to register new admin")
    }
    return new SuccessResponse("Admin registered successfully", registeredUser)
  };



  export {
    createPermissionMethod,
    createRoleMethod,
    fetchAllPermissionMethod,
    fetchAllRoleMethod,
    RegisterAdminMethod
  }