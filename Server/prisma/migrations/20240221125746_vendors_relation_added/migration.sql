/*
  Warnings:

  - You are about to drop the column `approvedBy` on the `vendors` table. All the data in the column will be lost.
  - You are about to drop the column `createdBy` on the `vendors` table. All the data in the column will be lost.
  - You are about to drop the column `restaurantUserID` on the `vendors` table. All the data in the column will be lost.
  - You are about to drop the column `updatedBy` on the `vendors` table. All the data in the column will be lost.
  - Added the required column `addressLine1` to the `vendors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `approvalStatus` to the `vendors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `approvedByUserID` to the `vendors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `city` to the `vendors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `country` to the `vendors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdByUserID` to the `vendors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `state` to the `vendors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedByUserID` to the `vendors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `vendorName` to the `vendors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `zipCode` to the `vendors` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "vendors" DROP CONSTRAINT "vendors_restaurantUserID_fkey";

-- AlterTable
ALTER TABLE "vendors" DROP COLUMN "approvedBy",
DROP COLUMN "createdBy",
DROP COLUMN "restaurantUserID",
DROP COLUMN "updatedBy",
ADD COLUMN     "addressLine1" TEXT NOT NULL,
ADD COLUMN     "addressLine2" TEXT,
ADD COLUMN     "approvalStatus" BOOLEAN NOT NULL,
ADD COLUMN     "approvedByUserID" TEXT NOT NULL,
ADD COLUMN     "city" TEXT NOT NULL,
ADD COLUMN     "country" TEXT NOT NULL,
ADD COLUMN     "createdByUserID" TEXT NOT NULL,
ADD COLUMN     "state" TEXT NOT NULL,
ADD COLUMN     "updatedByUserID" TEXT NOT NULL,
ADD COLUMN     "vendorName" TEXT NOT NULL,
ADD COLUMN     "zipCode" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "vendors" ADD CONSTRAINT "vendors_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendors" ADD CONSTRAINT "vendors_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendors" ADD CONSTRAINT "vendors_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendors" ADD CONSTRAINT "vendors_restaurantID_fkey" FOREIGN KEY ("restaurantID") REFERENCES "restaurant"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
