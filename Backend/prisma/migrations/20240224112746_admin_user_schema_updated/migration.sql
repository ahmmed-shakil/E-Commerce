-- DropForeignKey
ALTER TABLE "admin_users" DROP CONSTRAINT "admin_users_admin_rolesId_fkey";

-- AddForeignKey
ALTER TABLE "admin_users" ADD CONSTRAINT "admin_users_admin_rolesId_fkey" FOREIGN KEY ("admin_rolesId") REFERENCES "admin_roles"("roleName") ON DELETE RESTRICT ON UPDATE CASCADE;
