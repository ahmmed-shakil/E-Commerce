/*
  Warnings:

  - You are about to drop the column `storeSKUItemMeasurementUnit` on the `store_SKU_items` table. All the data in the column will be lost.
  - You are about to drop the column `storeSKUItemName` on the `store_SKU_items` table. All the data in the column will be lost.
  - Added the required column `SKUItemMeasurementUnit` to the `store_SKU_items` table without a default value. This is not possible if the table is not empty.
  - Added the required column `SKUItemName` to the `store_SKU_items` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "store_SKU_items" DROP COLUMN "storeSKUItemMeasurementUnit",
DROP COLUMN "storeSKUItemName",
ADD COLUMN     "SKUItemMeasurementUnit" TEXT NOT NULL,
ADD COLUMN     "SKUItemName" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "restaurant_SKU_groups" (
    "id" TEXT NOT NULL,
    "restaurantSKUGroupName" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "restaurant_SKU_groups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "restaurant_SKU_category" (
    "id" TEXT NOT NULL,
    "SKUCategoryName" TEXT NOT NULL,
    "isVeg" BOOLEAN NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "restaurant_SKU_category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "restaurant_SKU_items" (
    "id" TEXT NOT NULL,
    "SKUItemName" TEXT NOT NULL,
    "SKUItemMeasurementUnit" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,
    "restaurantSKUCategoryID" TEXT NOT NULL,
    "restaurantSKUGroupID" TEXT,

    CONSTRAINT "restaurant_SKU_items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "restaurant_SKU_item_variants" (
    "id" TEXT NOT NULL,
    "isNCItem" BOOLEAN NOT NULL DEFAULT false,
    "SKUItemID" TEXT NOT NULL,
    "SKUItemVariantName" TEXT NOT NULL,
    "SKUItemVariantQuantity" INTEGER NOT NULL,
    "SKUItemVariantExpirationDate" TIMESTAMP(3),
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "restaurant_SKU_item_variants_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "restaurant_SKU_groups" ADD CONSTRAINT "restaurant_SKU_groups_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_groups" ADD CONSTRAINT "restaurant_SKU_groups_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_groups" ADD CONSTRAINT "restaurant_SKU_groups_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_category" ADD CONSTRAINT "restaurant_SKU_category_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_category" ADD CONSTRAINT "restaurant_SKU_category_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_category" ADD CONSTRAINT "restaurant_SKU_category_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_items" ADD CONSTRAINT "restaurant_SKU_items_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_items" ADD CONSTRAINT "restaurant_SKU_items_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_items" ADD CONSTRAINT "restaurant_SKU_items_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_items" ADD CONSTRAINT "restaurant_SKU_items_restaurantSKUCategoryID_fkey" FOREIGN KEY ("restaurantSKUCategoryID") REFERENCES "restaurant_SKU_category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_items" ADD CONSTRAINT "restaurant_SKU_items_restaurantSKUGroupID_fkey" FOREIGN KEY ("restaurantSKUGroupID") REFERENCES "restaurant_SKU_groups"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_item_variants" ADD CONSTRAINT "restaurant_SKU_item_variants_SKUItemID_fkey" FOREIGN KEY ("SKUItemID") REFERENCES "restaurant_SKU_items"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_item_variants" ADD CONSTRAINT "restaurant_SKU_item_variants_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_item_variants" ADD CONSTRAINT "restaurant_SKU_item_variants_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_SKU_item_variants" ADD CONSTRAINT "restaurant_SKU_item_variants_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
