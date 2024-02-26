/*
  Warnings:

  - Added the required column `businessName` to the `vendor_users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "vendor_users" ADD COLUMN     "businessName" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "vendor_employee_users" (
    "id" TEXT NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT,
    "email" TEXT NOT NULL,
    "phoneNumber" TEXT NOT NULL,
    "addressLine1" TEXT,
    "addressLine2" TEXT,
    "city" TEXT,
    "state" TEXT,
    "country" TEXT,
    "zipCode" INTEGER,
    "countryCode" TEXT,
    "gender" TEXT,
    "dateOfBirth" TIMESTAMP(3),
    "password" TEXT NOT NULL,
    "vendor_rolesId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "userType" TEXT NOT NULL DEFAULT 'vendor',
    "vendorID" TEXT NOT NULL,

    CONSTRAINT "vendor_employee_users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "vendor_employee_users_email_key" ON "vendor_employee_users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "vendor_employee_users_phoneNumber_key" ON "vendor_employee_users"("phoneNumber");

-- AddForeignKey
ALTER TABLE "vendor_employee_users" ADD CONSTRAINT "vendor_employee_users_vendor_rolesId_fkey" FOREIGN KEY ("vendor_rolesId") REFERENCES "vendor_roles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendor_employee_users" ADD CONSTRAINT "vendor_employee_users_vendorID_fkey" FOREIGN KEY ("vendorID") REFERENCES "vendor_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
