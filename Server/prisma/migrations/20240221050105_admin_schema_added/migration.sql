-- CreateTable
CREATE TABLE "admin_roles" (
    "id" TEXT NOT NULL,
    "roleName" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "admin_roles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "admin_permissions" (
    "id" TEXT NOT NULL,
    "accessPermissionName" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "admin_permissions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "admin_users" (
    "id" TEXT NOT NULL,
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
    "DateOfBirth" TIMESTAMP(3),
    "userName" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "userImageLink" TEXT,
    "admin_rolesId" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "admin_users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_admin_permissionsToadmin_roles" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "admin_roles_roleName_key" ON "admin_roles"("roleName");

-- CreateIndex
CREATE UNIQUE INDEX "admin_users_email_key" ON "admin_users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "admin_users_phoneNumber_key" ON "admin_users"("phoneNumber");

-- CreateIndex
CREATE UNIQUE INDEX "admin_users_userName_key" ON "admin_users"("userName");

-- CreateIndex
CREATE UNIQUE INDEX "_admin_permissionsToadmin_roles_AB_unique" ON "_admin_permissionsToadmin_roles"("A", "B");

-- CreateIndex
CREATE INDEX "_admin_permissionsToadmin_roles_B_index" ON "_admin_permissionsToadmin_roles"("B");

-- AddForeignKey
ALTER TABLE "admin_users" ADD CONSTRAINT "admin_users_admin_rolesId_fkey" FOREIGN KEY ("admin_rolesId") REFERENCES "admin_roles"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_admin_permissionsToadmin_roles" ADD CONSTRAINT "_admin_permissionsToadmin_roles_A_fkey" FOREIGN KEY ("A") REFERENCES "admin_permissions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_admin_permissionsToadmin_roles" ADD CONSTRAINT "_admin_permissionsToadmin_roles_B_fkey" FOREIGN KEY ("B") REFERENCES "admin_roles"("id") ON DELETE CASCADE ON UPDATE CASCADE;
