-- DropForeignKey
ALTER TABLE "store_SKU_category" DROP CONSTRAINT "store_SKU_category_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_category" DROP CONSTRAINT "store_SKU_category_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_category" DROP CONSTRAINT "store_SKU_category_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "vendor_categories" DROP CONSTRAINT "vendor_categories_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "vendor_categories" DROP CONSTRAINT "vendor_categories_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "vendor_categories" DROP CONSTRAINT "vendor_categories_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "vendors" DROP CONSTRAINT "vendors_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "vendors" DROP CONSTRAINT "vendors_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "vendors" DROP CONSTRAINT "vendors_updatedByUserID_fkey";

-- AlterTable
ALTER TABLE "store_SKU_category" ALTER COLUMN "createdByUserID" DROP NOT NULL,
ALTER COLUMN "updatedByUserID" DROP NOT NULL,
ALTER COLUMN "approvedByUserID" DROP NOT NULL;

-- AlterTable
ALTER TABLE "vendor_categories" ALTER COLUMN "approvedByUserID" DROP NOT NULL,
ALTER COLUMN "createdByUserID" DROP NOT NULL,
ALTER COLUMN "updatedByUserID" DROP NOT NULL;

-- AlterTable
ALTER TABLE "vendors" ALTER COLUMN "approvedByUserID" DROP NOT NULL,
ALTER COLUMN "createdByUserID" DROP NOT NULL,
ALTER COLUMN "updatedByUserID" DROP NOT NULL;

-- CreateTable
CREATE TABLE "store_SKU_sections" (
    "id" TEXT NOT NULL,
    "storeSKUSectionName" TEXT NOT NULL,
    "storeSKUCategoryID" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "store_SKU_sections_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "store_SKU_items" (
    "id" TEXT NOT NULL,
    "storeSKUItemName" TEXT NOT NULL,
    "storeSKUItemMeasurementUnit" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,
    "storeSKUSectionID" TEXT NOT NULL,

    CONSTRAINT "store_SKU_items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "store_SKU_item_variants" (
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

    CONSTRAINT "store_SKU_item_variants_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "vendor_categories" ADD CONSTRAINT "vendor_categories_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendor_categories" ADD CONSTRAINT "vendor_categories_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendor_categories" ADD CONSTRAINT "vendor_categories_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendors" ADD CONSTRAINT "vendors_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendors" ADD CONSTRAINT "vendors_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendors" ADD CONSTRAINT "vendors_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_category" ADD CONSTRAINT "store_SKU_category_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_category" ADD CONSTRAINT "store_SKU_category_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_category" ADD CONSTRAINT "store_SKU_category_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_sections" ADD CONSTRAINT "store_SKU_sections_storeSKUCategoryID_fkey" FOREIGN KEY ("storeSKUCategoryID") REFERENCES "store_SKU_category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_sections" ADD CONSTRAINT "store_SKU_sections_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_sections" ADD CONSTRAINT "store_SKU_sections_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_sections" ADD CONSTRAINT "store_SKU_sections_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_items" ADD CONSTRAINT "store_SKU_items_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_items" ADD CONSTRAINT "store_SKU_items_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_items" ADD CONSTRAINT "store_SKU_items_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_items" ADD CONSTRAINT "store_SKU_items_storeSKUSectionID_fkey" FOREIGN KEY ("storeSKUSectionID") REFERENCES "store_SKU_sections"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_item_variants" ADD CONSTRAINT "store_SKU_item_variants_SKUItemID_fkey" FOREIGN KEY ("SKUItemID") REFERENCES "store_SKU_items"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_item_variants" ADD CONSTRAINT "store_SKU_item_variants_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_item_variants" ADD CONSTRAINT "store_SKU_item_variants_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_item_variants" ADD CONSTRAINT "store_SKU_item_variants_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
