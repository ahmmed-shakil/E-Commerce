/*
  Warnings:

  - Added the required column `updatedAt` to the `vendors` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "vendors" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "enabled" BOOLEAN NOT NULL DEFAULT true,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "store_SKU_category" (
    "id" TEXT NOT NULL,
    "SKUCategoryName" TEXT NOT NULL,
    "isVeg" BOOLEAN NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT NOT NULL,
    "updatedByUserID" TEXT NOT NULL,
    "approvedByUserID" TEXT NOT NULL,

    CONSTRAINT "store_SKU_category_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "store_SKU_category" ADD CONSTRAINT "store_SKU_category_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_category" ADD CONSTRAINT "store_SKU_category_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_category" ADD CONSTRAINT "store_SKU_category_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
