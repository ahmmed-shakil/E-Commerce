
export interface createVendorRolesInterface {
    roleName: string; //@unique
}


export interface vendorRegistrationInterface {
  firstName: string;
  lastName?: string;
  businessName: string;
  email: string;
  username: string;
  password: string;
  userName:string;
  phoneNumber:string;
  vendor_rolesId:string,
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
  