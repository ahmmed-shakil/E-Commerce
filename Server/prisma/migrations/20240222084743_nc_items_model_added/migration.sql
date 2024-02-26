/*
  Warnings:

  - A unique constraint covering the columns `[restaurantRecquisitionID]` on the table `restaurant_issues` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[SKUItemVariantID]` on the table `store_SKU_item_variants_purchase_rates` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `SKUItemVariantRate` to the `restaurant_SKU_item_variants` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "restaurant_SKU_item_variants" ADD COLUMN     "SKUItemVariantRate" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "waste_management_items" ADD COLUMN     "restaurantSKUItemVariantID" TEXT;

-- CreateTable
CREATE TABLE "non_chargable_category" (
    "id" TEXT NOT NULL,
    "nonChargableCategoryName" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "non_chargable_category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "non_cahrgable_items" (
    "id" TEXT NOT NULL,
    "SKUItemVariantID" TEXT NOT NULL,
    "restaurantUserID" TEXT,
    "NonChargableItemDescription" TEXT,
    "NonChargableItemQuantity" INTEGER,
    "NonChargableItemRate" INTEGER,
    "NonChargableItemAmount" INTEGER,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "non_cahrgable_items_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "non_cahrgable_items_SKUItemVariantID_key" ON "non_cahrgable_items"("SKUItemVariantID");

-- CreateIndex
CREATE UNIQUE INDEX "non_cahrgable_items_restaurantUserID_key" ON "non_cahrgable_items"("restaurantUserID");

-- CreateIndex
CREATE UNIQUE INDEX "restaurant_issues_restaurantRecquisitionID_key" ON "restaurant_issues"("restaurantRecquisitionID");

-- CreateIndex
CREATE UNIQUE INDEX "store_SKU_item_variants_purchase_rates_SKUItemVariantID_key" ON "store_SKU_item_variants_purchase_rates"("SKUItemVariantID");

-- AddForeignKey
ALTER TABLE "waste_management_items" ADD CONSTRAINT "waste_management_items_restaurantSKUItemVariantID_fkey" FOREIGN KEY ("restaurantSKUItemVariantID") REFERENCES "restaurant_SKU_item_variants"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "non_chargable_category" ADD CONSTRAINT "non_chargable_category_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "non_chargable_category" ADD CONSTRAINT "non_chargable_category_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "non_chargable_category" ADD CONSTRAINT "non_chargable_category_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "non_cahrgable_items" ADD CONSTRAINT "non_cahrgable_items_SKUItemVariantID_fkey" FOREIGN KEY ("SKUItemVariantID") REFERENCES "restaurant_SKU_item_variants"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "non_cahrgable_items" ADD CONSTRAINT "non_cahrgable_items_restaurantUserID_fkey" FOREIGN KEY ("restaurantUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "non_cahrgable_items" ADD CONSTRAINT "non_cahrgable_items_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "non_cahrgable_items" ADD CONSTRAINT "non_cahrgable_items_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "non_cahrgable_items" ADD CONSTRAINT "non_cahrgable_items_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
