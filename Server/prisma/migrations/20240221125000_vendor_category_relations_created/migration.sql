/*
  Warnings:

  - You are about to drop the column `approvedBy` on the `vendor_categories` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `vendor_categories` table. All the data in the column will be lost.
  - You are about to drop the column `restaurantUserID` on the `vendor_categories` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `vendor_categories` table. All the data in the column will be lost.
  - Added the required column `approvedByUserID` to the `vendor_categories` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdByUserID` to the `vendor_categories` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedByUserID` to the `vendor_categories` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "vendor_categories" DROP CONSTRAINT "vendor_categories_restaurantUserID_fkey";

-- AlterTable
ALTER TABLE "vendor_categories" DROP COLUMN "approvedBy",
DROP COLUMN "createdBy",
DROP COLUMN "restaurantUserID",
DROP COLUMN "updatedBy",
ADD COLUMN     "approvedByUserID" TEXT NOT NULL,
ADD COLUMN     "createdByUserID" TEXT NOT NULL,
ADD COLUMN     "updatedByUserID" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "vendor_categories" ADD CONSTRAINT "vendor_categories_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendor_categories" ADD CONSTRAINT "vendor_categories_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendor_categories" ADD CONSTRAINT "vendor_categories_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
