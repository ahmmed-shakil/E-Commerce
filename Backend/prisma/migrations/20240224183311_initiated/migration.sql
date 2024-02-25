/*
  Warnings:

  - A unique constraint covering the columns `[accessPermissionName]` on the table `admin_permissions` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `admin_permission` to the `admin_users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "admin_users" ADD COLUMN     "admin_permission" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "admin_permissions_accessPermissionName_key" ON "admin_permissions"("accessPermissionName");

-- AddForeignKey
ALTER TABLE "admin_users" ADD CONSTRAINT "admin_users_admin_permission_fkey" FOREIGN KEY ("admin_permission") REFERENCES "admin_permissions"("accessPermissionName") ON DELETE RESTRICT ON UPDATE CASCADE;
