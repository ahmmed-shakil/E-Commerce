/*
  Warnings:

  - You are about to drop the column `DateOfBirth` on the `admin_users` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "admin_users" DROP COLUMN "DateOfBirth",
ADD COLUMN     "dateOfBirth" TIMESTAMP(3);

-- CreateTable
CREATE TABLE "restaurant_roles" (
    "id" TEXT NOT NULL,
    "roleName" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "restaurant_roles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "restaurant_permissions" (
    "id" TEXT NOT NULL,
    "accessPermissionName" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "restaurant_permissions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "restaurant" (
    "id" TEXT NOT NULL,
    "restaurantName" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "emailAddress" TEXT NOT NULL,
    "phoneNumber" TEXT NOT NULL,
    "zipCode" INTEGER NOT NULL,
    "countryCode" TEXT NOT NULL,
    "businessModelType" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdBy" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "restaurant_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "restaurant_users" (
    "id" TEXT NOT NULL,
    "restaurantID" TEXT NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT,
    "email" TEXT NOT NULL,
    "phoneNumber" TEXT NOT NULL,
    "addressLine1" TEXT NOT NULL,
    "addressLine2" TEXT,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "zipCode" INTEGER NOT NULL,
    "countryCode" TEXT NOT NULL,
    "gender" TEXT NOT NULL,
    "dateOfBirth" TIMESTAMP(3),
    "userName" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "restaurant_rolesId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdBy" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "restaurant_users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_restaurant_permissionsTorestaurant_roles" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "restaurant_roles_roleName_key" ON "restaurant_roles"("roleName");

-- CreateIndex
CREATE UNIQUE INDEX "restaurant_users_email_key" ON "restaurant_users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "restaurant_users_phoneNumber_key" ON "restaurant_users"("phoneNumber");

-- CreateIndex
CREATE UNIQUE INDEX "restaurant_users_userName_key" ON "restaurant_users"("userName");

-- CreateIndex
CREATE UNIQUE INDEX "_restaurant_permissionsTorestaurant_roles_AB_unique" ON "_restaurant_permissionsTorestaurant_roles"("A", "B");

-- CreateIndex
CREATE INDEX "_restaurant_permissionsTorestaurant_roles_B_index" ON "_restaurant_permissionsTorestaurant_roles"("B");

-- AddForeignKey
ALTER TABLE "restaurant_users" ADD CONSTRAINT "restaurant_users_restaurantID_fkey" FOREIGN KEY ("restaurantID") REFERENCES "restaurant"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_users" ADD CONSTRAINT "restaurant_users_restaurant_rolesId_fkey" FOREIGN KEY ("restaurant_rolesId") REFERENCES "restaurant_roles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_restaurant_permissionsTorestaurant_roles" ADD CONSTRAINT "_restaurant_permissionsTorestaurant_roles_A_fkey" FOREIGN KEY ("A") REFERENCES "restaurant_permissions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_restaurant_permissionsTorestaurant_roles" ADD CONSTRAINT "_restaurant_permissionsTorestaurant_roles_B_fkey" FOREIGN KEY ("B") REFERENCES "restaurant_roles"("id") ON DELETE CASCADE ON UPDATE CASCADE;
