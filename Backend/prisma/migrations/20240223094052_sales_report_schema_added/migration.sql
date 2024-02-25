-- CreateTable
CREATE TABLE "online_order_average_time" (
    "id" TEXT NOT NULL,
    "riderArrivalTime" TIMESTAMP(3),
    "pickupTime" TIMESTAMP(3),
    "deliveredTime" TIMESTAMP(3),
    "cancelledTime" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "online_order_average_time_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_type" (
    "id" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "subOrderType" TEXT NOT NULL,
    "onlineOrderAverageTimeID" TEXT,
    "orderStatus" TEXT,
    "orderCancelReason" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "order_type_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "invoices" (
    "id" TEXT NOT NULL,
    "invoiceNumber" TEXT NOT NULL,
    "paymentStatus" BOOLEAN NOT NULL,
    "paymentType" TEXT NOT NULL,
    "orderTypeID" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "restaurantID" TEXT,

    CONSTRAINT "invoices_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "discount_coupons" (
    "id" TEXT NOT NULL,
    "couponName" TEXT NOT NULL,
    "couponProvider" TEXT NOT NULL,
    "enabled" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "discount_coupons_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "document_uploads" (
    "id" TEXT NOT NULL,
    "restaurantUserID" TEXT,
    "adminUserID" TEXT,
    "documentCategory" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "document_uploads_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "sales_data_item_wise" (
    "id" TEXT NOT NULL,
    "documentUploadID" TEXT,
    "restaurantSKUItemVariantID" TEXT,
    "storeSKUItemVariantID" TEXT,
    "discount" INTEGER,
    "discountCouponID" TEXT,
    "subTotal" INTEGER,
    "tax" INTEGER,
    "finalTotal" INTEGER,
    "tableNumber" TEXT,
    "serverName" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "sales_data_item_wise_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "order_type_onlineOrderAverageTimeID_key" ON "order_type"("onlineOrderAverageTimeID");

-- CreateIndex
CREATE UNIQUE INDEX "invoices_orderTypeID_key" ON "invoices"("orderTypeID");

-- AddForeignKey
ALTER TABLE "order_type" ADD CONSTRAINT "order_type_onlineOrderAverageTimeID_fkey" FOREIGN KEY ("onlineOrderAverageTimeID") REFERENCES "online_order_average_time"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "invoices" ADD CONSTRAINT "invoices_orderTypeID_fkey" FOREIGN KEY ("orderTypeID") REFERENCES "order_type"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "invoices" ADD CONSTRAINT "invoices_restaurantID_fkey" FOREIGN KEY ("restaurantID") REFERENCES "restaurant"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_coupons" ADD CONSTRAINT "discount_coupons_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_coupons" ADD CONSTRAINT "discount_coupons_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_coupons" ADD CONSTRAINT "discount_coupons_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "document_uploads" ADD CONSTRAINT "document_uploads_restaurantUserID_fkey" FOREIGN KEY ("restaurantUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "document_uploads" ADD CONSTRAINT "document_uploads_adminUserID_fkey" FOREIGN KEY ("adminUserID") REFERENCES "admin_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sales_data_item_wise" ADD CONSTRAINT "sales_data_item_wise_documentUploadID_fkey" FOREIGN KEY ("documentUploadID") REFERENCES "document_uploads"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sales_data_item_wise" ADD CONSTRAINT "sales_data_item_wise_restaurantSKUItemVariantID_fkey" FOREIGN KEY ("restaurantSKUItemVariantID") REFERENCES "restaurant_SKU_item_variants"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sales_data_item_wise" ADD CONSTRAINT "sales_data_item_wise_storeSKUItemVariantID_fkey" FOREIGN KEY ("storeSKUItemVariantID") REFERENCES "store_SKU_item_variants"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sales_data_item_wise" ADD CONSTRAINT "sales_data_item_wise_discountCouponID_fkey" FOREIGN KEY ("discountCouponID") REFERENCES "discount_coupons"("id") ON DELETE SET NULL ON UPDATE CASCADE;
