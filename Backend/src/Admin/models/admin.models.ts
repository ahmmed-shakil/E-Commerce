export interface createAdminAccessPermissionsInterface {
    accessPermissionName: string;
}
  
export interface createAdminRolesInterface {
    roleName: string; //@unique
    permissions: { id: string }[];
}


export interface adminRegisterInterface {
  firstName: string;
  lastName?: string;
  email: string;
  username: string;
  password: string;
  userName:string;
  phoneNumber:string;
  admin_rolesId:string,
  admin_permission:string,
  addressLine1: string,
  addressLine2: string,
  city: string,
  state:  string,
  country:  string,
  zipCode: number,
  countryCode:  string,
  gender: string,
  dateOfBirth:  string,
  userImageLink: string,
}

export interface adminDetailsInterface {
  firstName: string;
  lastName?: string;
  email: string;
  phoneNumber: string;
  addressLine1?: string;
  addressLine2?: string;
  city?: string;
  state?: string;
  country?: string;
  zipCode?: number;
  countryCode?: string;
  gender?: string;
  DateOfBirth?: Date;
  userName: string;
  password: string;
  // userImage?: string;
  userImageLink?: string;
  admin_rolesId: string;
  admin_permission:string,
  decodeToken: {
    username: string;
    id: number;
    roleName: string;
  };
}
