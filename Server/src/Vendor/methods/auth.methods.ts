import prisma_client from "../../config/prisma";
import { BadRequestError } from "../../core/ApiError";
import { BadRequestResponse, FailureMsgResponse, InternalErrorResponse,SuccessResponse } from "../../core/ApiResponse";
import { hashPassword } from "../../core/utils";
import { createVendorRolesInterface, vendorRegistrationInterface } from "../models/vendor.model";



// Roles and Permissions
  const createRoleMethod = async (roleData: createVendorRolesInterface) => {
    
    const existingRole = await prisma_client.vendor_roles.findFirst({
        where: { roleName: roleData.roleName },
      });
      if (existingRole) {
        throw new BadRequestError('Role already exists');
      }
    const roleResponse = await prisma_client.admin_roles.create({
      data: {
        roleName: roleData.roleName,
      },
    });
    if (!roleResponse) {
      throw new BadRequestError('Failed to create new vendor role')
    }
    return new SuccessResponse("Created new vendor role", roleResponse)
  };



  const fetchAllRoleMethod = async () => {
    const roleFetched = await prisma_client.vendor_roles.findMany({
      
      });
      if (!roleFetched) {
        throw new BadRequestError("Failed to fetch vendor roles")
      }

      return new SuccessResponse("Fetched vendor roles", roleFetched)

  };


//   Admin User

const RegisterVendorMethod = async (
    vendorRegistrationData: vendorRegistrationInterface
  ) => {
    console.log(vendorRegistrationData, "vendorRegistrationData");
    const existingUsername = await prisma_client.admin_users.findFirst({
        where: { userName: vendorRegistrationData.userName },
      });
      if (existingUsername) {
        throw new BadRequestError('Admin not registered: Username Already Taken');
      }
    const existingEmail = await prisma_client.admin_users.findFirst({
        where: { email: vendorRegistrationData.email },
      });
      if (existingEmail) {
        throw new BadRequestError('Admin not registered: Email Already Taken');
      }
    const existingPhoneNumber = await prisma_client.admin_users.findFirst({
        where: { phoneNumber: vendorRegistrationData.phoneNumber },
      });
      if (existingPhoneNumber) {
        throw new BadRequestError('Admin not registered: Phone Number Already Taken');
      }
    const hashedpass: string = await hashPassword(
      vendorRegistrationData.password
    );
    const registeredUser = await prisma_client.admin_users.create({
      data: { ...vendorRegistrationData, password: hashedpass },
    });
    if (!registeredUser) {
      throw new BadRequestError("Failed to register new admin")
    }
    return new SuccessResponse("Admin registered successfully", registeredUser)
  };



  export {
    createRoleMethod,
    fetchAllRoleMethod,
    RegisterVendorMethod
  }