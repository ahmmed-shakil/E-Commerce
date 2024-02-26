-- AlterTable
ALTER TABLE "restaurant_recquisition_items" ALTER COLUMN "remarks" DROP NOT NULL;

-- CreateTable
CREATE TABLE "restaurant_issues" (
    "id" TEXT NOT NULL,
    "restaurantRecquisitionID" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "createdByUserID" TEXT,
    "updatedByUserID" TEXT,
    "approvedByUserID" TEXT,

    CONSTRAINT "restaurant_issues_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "restaurant_issued_items" (
    "id" TEXT NOT NULL,
    "restaurantRecquisitionItemID" TEXT NOT NULL,
    "quantityIssued" INTEGER NOT NULL,
    "remarks" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "restaurant_issuesId" TEXT,

    CONSTRAINT "restaurant_issued_items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "store_inventory" (
    "id" TEXT NOT NULL,
    "restaurandID" TEXT NOT NULL,
    "storeInventoryQuantity" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "store_inventory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "store_inventory_details" (
    "id" TEXT NOT NULL,
    "storeInventoryId" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "openingQuantity" INTEGER NOT NULL,
    "purchasedQuantity" INTEGER NOT NULL,
    "issuedQuantity" INTEGER NOT NULL,
    "wastedQuantity" INTEGER NOT NULL,
    "closingQuantity" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "store_inventory_details_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "restaurant_issues" ADD CONSTRAINT "restaurant_issues_restaurantRecquisitionID_fkey" FOREIGN KEY ("restaurantRecquisitionID") REFERENCES "restaurant_recquisitions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_issues" ADD CONSTRAINT "restaurant_issues_createdByUserID_fkey" FOREIGN KEY ("createdByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_issues" ADD CONSTRAINT "restaurant_issues_updatedByUserID_fkey" FOREIGN KEY ("updatedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_issues" ADD CONSTRAINT "restaurant_issues_approvedByUserID_fkey" FOREIGN KEY ("approvedByUserID") REFERENCES "restaurant_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_issued_items" ADD CONSTRAINT "restaurant_issued_items_restaurantRecquisitionItemID_fkey" FOREIGN KEY ("restaurantRecquisitionItemID") REFERENCES "restaurant_recquisition_items"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "restaurant_issued_items" ADD CONSTRAINT "restaurant_issued_items_restaurant_issuesId_fkey" FOREIGN KEY ("restaurant_issuesId") REFERENCES "restaurant_issues"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_inventory" ADD CONSTRAINT "store_inventory_restaurandID_fkey" FOREIGN KEY ("restaurandID") REFERENCES "restaurant"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_inventory_details" ADD CONSTRAINT "store_inventory_details_storeInventoryId_fkey" FOREIGN KEY ("storeInventoryId") REFERENCES "store_inventory"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
