/*
  Warnings:

  - Made the column `admin_rolesId` on table `admin_users` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "admin_users" DROP CONSTRAINT "admin_users_admin_rolesId_fkey";

-- AlterTable
ALTER TABLE "admin_users" ALTER COLUMN "addressLine1" DROP NOT NULL,
ALTER COLUMN "admin_rolesId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "admin_users" ADD CONSTRAINT "admin_users_admin_rolesId_fkey" FOREIGN KEY ("admin_rolesId") REFERENCES "admin_roles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
