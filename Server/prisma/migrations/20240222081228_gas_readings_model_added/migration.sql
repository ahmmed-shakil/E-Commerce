-- CreateTable
CREATE TABLE "store_purchase" (
    "id" TEXT NOT NULL,
    "restaurandID" TEXT,
    "vendorID" TEXT NOT NULL,
    "storeSKUItemVariantsID" TEXT NOT NULL,
    "storePurchaseQuantity" INTEGER NOT NULL,
    "storePurcuaseRate" INTEGER NOT NULL,
    "storePurchaseAmount" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "restaurantUserID" TEXT,

    CONSTRAINT "store_purchase_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "store_SKU_item_variants_purchase_rates" (
    "id" TEXT NOT NULL,
    "SKUItemVariantID" TEXT NOT NULL,
    "SKUItemVariantPurchaseRates" JSONB NOT NULL,
    "SKUItemVariantNewRate" INTEGER NOT NULL,
    "SKUItemVariantOldRate" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "store_SKU_item_variants_purchase_rates_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "waste_management_category" (
    "id" TEXT NOT NULL,
    "wasteManagementCategoryName" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "waste_management_category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "waste_management_items" (
    "id" TEXT NOT NULL,
    "restaurantUserID" TEXT NOT NULL,
    "storeSKUItemVariantID" TEXT,
    "wastedItemQuantity" INTEGER NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "waste_management_items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "gas_readings" (
    "id" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "LPG" INTEGER NOT NULL,
    "Amount" INTEGER NOT NULL,
    "openingReading" INTEGER NOT NULL,
    "closingReading" INTEGER NOT NULL,
    "netReading" INTEGER NOT NULL,
    "totalAmount" INTEGER NOT NULL,
    "covers" INTEGER NOT NULL,
    "PPC" INTEGER NOT NULL,
    "restaurantUserID" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "gas_readings_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "store_purchase" ADD CONSTRAINT "store_purchase_vendorID_fkey" FOREIGN KEY ("vendorID") REFERENCES "vendors"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_purchase" ADD CONSTRAINT "store_purchase_storeSKUItemVariantsID_fkey" FOREIGN KEY ("storeSKUItemVariantsID") REFERENCES "store_SKU_item_variants"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_purchase" ADD CONSTRAINT "store_purchase_restaurantUserID_fkey" FOREIGN KEY ("restaurantUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_item_variants_purchase_rates" ADD CONSTRAINT "store_SKU_item_variants_purchase_rates_SKUItemVariantID_fkey" FOREIGN KEY ("SKUItemVariantID") REFERENCES "store_SKU_item_variants"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "waste_management_category" ADD CONSTRAINT "waste_management_category_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "waste_management_category" ADD CONSTRAINT "waste_management_category_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "waste_management_category" ADD CONSTRAINT "waste_management_category_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "waste_management_items" ADD CONSTRAINT "waste_management_items_restaurantUserID_fkey" FOREIGN KEY ("restaurantUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "waste_management_items" ADD CONSTRAINT "waste_management_items_storeSKUItemVariantID_fkey" FOREIGN KEY ("storeSKUItemVariantID") REFERENCES "store_SKU_item_variants"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "waste_management_items" ADD CONSTRAINT "waste_management_items_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "waste_management_items" ADD CONSTRAINT "waste_management_items_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "waste_management_items" ADD CONSTRAINT "waste_management_items_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "gas_readings" ADD CONSTRAINT "gas_readings_restaurantUserID_fkey" FOREIGN KEY ("restaurantUserID") REFERENCES "restaurant_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "gas_readings" ADD CONSTRAINT "gas_readings_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "gas_readings" ADD CONSTRAINT "gas_readings_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "gas_readings" ADD CONSTRAINT "gas_readings_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
