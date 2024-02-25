-- CreateTable
CREATE TABLE "restaurant_expense_category" (
    "id" TEXT NOT NULL,
    "restaurantExpenseCategoryName" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "restaurant_expense_category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "restaurant_expenses" (
    "id" TEXT NOT NULL,
    "restaurantExpenseCategoryID" TEXT NOT NULL,
    "restaurantExpenseDescription" TEXT NOT NULL,
    "restaurantExpenseAmount" INTEGER NOT NULL,
    "restaurantExpensePaymentMode" TEXT,
    "restaurandID" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "restaurant_expenses_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "restaurant_recquisitions" (
    "id" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "restaurant_recquisitions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "restaurant_recquisition_items" (
    "id" TEXT NOT NULL,
    "srNo" INTEGER NOT NULL,
    "SKUItemVariantID" TEXT,
    "stockInHand" INTEGER NOT NULL,
    "requiredQuantity" INTEGER NOT NULL,
    "alreadyIssuedQuantity" INTEGER NOT NULL,
    "remarks" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "restaurantRecquisitionID" TEXT NOT NULL,

    CONSTRAINT "restaurant_recquisition_items_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "restaurant_expense_category" ADD CONSTRAINT "restaurant_expense_category_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_expense_category" ADD CONSTRAINT "restaurant_expense_category_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_expense_category" ADD CONSTRAINT "restaurant_expense_category_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_expenses" ADD CONSTRAINT "restaurant_expenses_restaurantExpenseCategoryID_fkey" FOREIGN KEY ("restaurantExpenseCategoryID") REFERENCES "restaurant_expense_category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_expenses" ADD CONSTRAINT "restaurant_expenses_restaurandID_fkey" FOREIGN KEY ("restaurandID") REFERENCES "restaurant"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_expenses" ADD CONSTRAINT "restaurant_expenses_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_expenses" ADD CONSTRAINT "restaurant_expenses_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_expenses" ADD CONSTRAINT "restaurant_expenses_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_recquisitions" ADD CONSTRAINT "restaurant_recquisitions_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_recquisitions" ADD CONSTRAINT "restaurant_recquisitions_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_recquisitions" ADD CONSTRAINT "restaurant_recquisitions_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_recquisition_items" ADD CONSTRAINT "restaurant_recquisition_items_SKUItemVariantID_fkey" FOREIGN KEY ("SKUItemVariantID") REFERENCES "store_SKU_item_variants"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_recquisition_items" ADD CONSTRAINT "restaurant_recquisition_items_restaurantRecquisitionID_fkey" FOREIGN KEY ("restaurantRecquisitionID") REFERENCES "restaurant_recquisitions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
