/*
  Warnings:

  - You are about to drop the column `admin_permission` on the `admin_users` table. All the data in the column will be lost.
  - You are about to drop the column `approvedByUserID` on the `discount_coupons` table. All the data in the column will be lost.
  - You are about to drop the column `couponName` on the `discount_coupons` table. All the data in the column will be lost.
  - You are about to drop the column `couponProvider` on the `discount_coupons` table. All the data in the column will be lost.
  - You are about to drop the column `createdByUserID` on the `discount_coupons` table. All the data in the column will be lost.
  - You are about to drop the column `updatedByUserID` on the `discount_coupons` table. All the data in the column will be lost.
  - You are about to drop the column `invoiceNumber` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `orderTypeID` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `paymentStatus` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `paymentType` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `restaurantID` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `approvedByUserID` on the `store_SKU_category` table. All the data in the column will be lost.
  - You are about to drop the column `createdByUserID` on the `store_SKU_category` table. All the data in the column will be lost.
  - You are about to drop the column `isVeg` on the `store_SKU_category` table. All the data in the column will be lost.
  - You are about to drop the column `updatedByUserID` on the `store_SKU_category` table. All the data in the column will be lost.
  - You are about to drop the column `SKUItemVariantExpirationDate` on the `store_SKU_item_variants` table. All the data in the column will be lost.
  - You are about to drop the column `approvedByUserID` on the `store_SKU_item_variants` table. All the data in the column will be lost.
  - You are about to drop the column `createdByUserID` on the `store_SKU_item_variants` table. All the data in the column will be lost.
  - You are about to drop the column `updatedByUserID` on the `store_SKU_item_variants` table. All the data in the column will be lost.
  - You are about to drop the column `approvedByUserID` on the `store_SKU_items` table. All the data in the column will be lost.
  - You are about to drop the column `createdByUserID` on the `store_SKU_items` table. All the data in the column will be lost.
  - You are about to drop the column `storeSKUSectionID` on the `store_SKU_items` table. All the data in the column will be lost.
  - You are about to drop the column `updatedByUserID` on the `store_SKU_items` table. All the data in the column will be lost.
  - You are about to drop the column `restaurandID` on the `store_inventory` table. All the data in the column will be lost.
  - You are about to drop the column `issuedQuantity` on the `store_inventory_details` table. All the data in the column will be lost.
  - You are about to drop the column `purchasedQuantity` on the `store_inventory_details` table. All the data in the column will be lost.
  - You are about to drop the column `wastedQuantity` on the `store_inventory_details` table. All the data in the column will be lost.
  - You are about to drop the `_admin_permissionsToadmin_roles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_restaurant_permissionsTorestaurant_roles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `admin_permissions` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `document_uploads` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `gas_readings` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `non_cahrgable_items` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `non_chargable_category` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `online_order_average_time` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `order_type` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_SKU_category` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_SKU_groups` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_SKU_item_variants` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_SKU_items` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_expense_category` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_expenses` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_issued_items` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_issues` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_permissions` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_recquisition_items` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_recquisitions` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_roles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `restaurant_users` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `sales_data_item_wise` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `store_SKU_item_variants_purchase_rates` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `store_SKU_sections` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `store_purchase` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `vendor_categories` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `vendors` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `waste_management_category` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `waste_management_items` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `discountType` to the `discount_coupons` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tranSactionID` to the `invoices` table without a default value. This is not possible if the table is not empty.
  - Added the required column `SKUItemVariantsBaseRate` to the `store_SKU_item_variants` table without a default value. This is not possible if the table is not empty.
  - Added the required column `vendorID` to the `store_inventory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `saleQuantity` to the `store_inventory_details` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_admin_permissionsToadmin_roles" DROP CONSTRAINT "_admin_permissionsToadmin_roles_A_fkey";

-- DropForeignKey
ALTER TABLE "_admin_permissionsToadmin_roles" DROP CONSTRAINT "_admin_permissionsToadmin_roles_B_fkey";

-- DropForeignKey
ALTER TABLE "_restaurant_permissionsTorestaurant_roles" DROP CONSTRAINT "_restaurant_permissionsTorestaurant_roles_A_fkey";

-- DropForeignKey
ALTER TABLE "_restaurant_permissionsTorestaurant_roles" DROP CONSTRAINT "_restaurant_permissionsTorestaurant_roles_B_fkey";

-- DropForeignKey
ALTER TABLE "admin_users" DROP CONSTRAINT "admin_users_admin_permission_fkey";

-- DropForeignKey
ALTER TABLE "admin_users" DROP CONSTRAINT "admin_users_admin_rolesId_fkey";

-- DropForeignKey
ALTER TABLE "discount_coupons" DROP CONSTRAINT "discount_coupons_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "discount_coupons" DROP CONSTRAINT "discount_coupons_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "discount_coupons" DROP CONSTRAINT "discount_coupons_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "document_uploads" DROP CONSTRAINT "document_uploads_adminUserID_fkey";

-- DropForeignKey
ALTER TABLE "document_uploads" DROP CONSTRAINT "document_uploads_restaurantUserID_fkey";

-- DropForeignKey
ALTER TABLE "gas_readings" DROP CONSTRAINT "gas_readings_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "gas_readings" DROP CONSTRAINT "gas_readings_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "gas_readings" DROP CONSTRAINT "gas_readings_restaurantUserID_fkey";

-- DropForeignKey
ALTER TABLE "gas_readings" DROP CONSTRAINT "gas_readings_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "invoices" DROP CONSTRAINT "invoices_orderTypeID_fkey";

-- DropForeignKey
ALTER TABLE "invoices" DROP CONSTRAINT "invoices_restaurantID_fkey";

-- DropForeignKey
ALTER TABLE "non_cahrgable_items" DROP CONSTRAINT "non_cahrgable_items_SKUItemVariantID_fkey";

-- DropForeignKey
ALTER TABLE "non_cahrgable_items" DROP CONSTRAINT "non_cahrgable_items_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "non_cahrgable_items" DROP CONSTRAINT "non_cahrgable_items_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "non_cahrgable_items" DROP CONSTRAINT "non_cahrgable_items_restaurantUserID_fkey";

-- DropForeignKey
ALTER TABLE "non_cahrgable_items" DROP CONSTRAINT "non_cahrgable_items_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "non_chargable_category" DROP CONSTRAINT "non_chargable_category_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "non_chargable_category" DROP CONSTRAINT "non_chargable_category_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "non_chargable_category" DROP CONSTRAINT "non_chargable_category_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "order_type" DROP CONSTRAINT "order_type_onlineOrderAverageTimeID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_category" DROP CONSTRAINT "restaurant_SKU_category_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_category" DROP CONSTRAINT "restaurant_SKU_category_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_category" DROP CONSTRAINT "restaurant_SKU_category_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_groups" DROP CONSTRAINT "restaurant_SKU_groups_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_groups" DROP CONSTRAINT "restaurant_SKU_groups_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_groups" DROP CONSTRAINT "restaurant_SKU_groups_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_item_variants" DROP CONSTRAINT "restaurant_SKU_item_variants_SKUItemID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_item_variants" DROP CONSTRAINT "restaurant_SKU_item_variants_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_item_variants" DROP CONSTRAINT "restaurant_SKU_item_variants_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_item_variants" DROP CONSTRAINT "restaurant_SKU_item_variants_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_items" DROP CONSTRAINT "restaurant_SKU_items_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_items" DROP CONSTRAINT "restaurant_SKU_items_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_items" DROP CONSTRAINT "restaurant_SKU_items_restaurantSKUCategoryID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_items" DROP CONSTRAINT "restaurant_SKU_items_restaurantSKUGroupID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_SKU_items" DROP CONSTRAINT "restaurant_SKU_items_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_expense_category" DROP CONSTRAINT "restaurant_expense_category_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_expense_category" DROP CONSTRAINT "restaurant_expense_category_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_expense_category" DROP CONSTRAINT "restaurant_expense_category_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_expenses" DROP CONSTRAINT "restaurant_expenses_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_expenses" DROP CONSTRAINT "restaurant_expenses_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_expenses" DROP CONSTRAINT "restaurant_expenses_restaurandID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_expenses" DROP CONSTRAINT "restaurant_expenses_restaurantExpenseCategoryID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_expenses" DROP CONSTRAINT "restaurant_expenses_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_issued_items" DROP CONSTRAINT "restaurant_issued_items_restaurantRecquisitionItemID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_issued_items" DROP CONSTRAINT "restaurant_issued_items_restaurant_issuesId_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_issues" DROP CONSTRAINT "restaurant_issues_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_issues" DROP CONSTRAINT "restaurant_issues_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_issues" DROP CONSTRAINT "restaurant_issues_restaurantRecquisitionID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_issues" DROP CONSTRAINT "restaurant_issues_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_recquisition_items" DROP CONSTRAINT "restaurant_recquisition_items_SKUItemVariantID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_recquisition_items" DROP CONSTRAINT "restaurant_recquisition_items_restaurantRecquisitionID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_recquisitions" DROP CONSTRAINT "restaurant_recquisitions_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_recquisitions" DROP CONSTRAINT "restaurant_recquisitions_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_recquisitions" DROP CONSTRAINT "restaurant_recquisitions_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_users" DROP CONSTRAINT "restaurant_users_restaurantID_fkey";

-- DropForeignKey
ALTER TABLE "restaurant_users" DROP CONSTRAINT "restaurant_users_restaurant_rolesId_fkey";

-- DropForeignKey
ALTER TABLE "sales_data_item_wise" DROP CONSTRAINT "sales_data_item_wise_discountCouponID_fkey";

-- DropForeignKey
ALTER TABLE "sales_data_item_wise" DROP CONSTRAINT "sales_data_item_wise_documentUploadID_fkey";

-- DropForeignKey
ALTER TABLE "sales_data_item_wise" DROP CONSTRAINT "sales_data_item_wise_restaurantSKUItemVariantID_fkey";

-- DropForeignKey
ALTER TABLE "sales_data_item_wise" DROP CONSTRAINT "sales_data_item_wise_storeSKUItemVariantID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_category" DROP CONSTRAINT "store_SKU_category_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_category" DROP CONSTRAINT "store_SKU_category_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_category" DROP CONSTRAINT "store_SKU_category_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_item_variants" DROP CONSTRAINT "store_SKU_item_variants_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_item_variants" DROP CONSTRAINT "store_SKU_item_variants_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_item_variants" DROP CONSTRAINT "store_SKU_item_variants_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_item_variants_purchase_rates" DROP CONSTRAINT "store_SKU_item_variants_purchase_rates_SKUItemVariantID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_items" DROP CONSTRAINT "store_SKU_items_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_items" DROP CONSTRAINT "store_SKU_items_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_items" DROP CONSTRAINT "store_SKU_items_storeSKUSectionID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_items" DROP CONSTRAINT "store_SKU_items_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_sections" DROP CONSTRAINT "store_SKU_sections_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_sections" DROP CONSTRAINT "store_SKU_sections_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_sections" DROP CONSTRAINT "store_SKU_sections_storeSKUCategoryID_fkey";

-- DropForeignKey
ALTER TABLE "store_SKU_sections" DROP CONSTRAINT "store_SKU_sections_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_inventory" DROP CONSTRAINT "store_inventory_restaurandID_fkey";

-- DropForeignKey
ALTER TABLE "store_purchase" DROP CONSTRAINT "store_purchase_restaurantUserID_fkey";

-- DropForeignKey
ALTER TABLE "store_purchase" DROP CONSTRAINT "store_purchase_storeSKUItemVariantsID_fkey";

-- DropForeignKey
ALTER TABLE "store_purchase" DROP CONSTRAINT "store_purchase_vendorID_fkey";

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
ALTER TABLE "vendors" DROP CONSTRAINT "vendors_restaurantID_fkey";

-- DropForeignKey
ALTER TABLE "vendors" DROP CONSTRAINT "vendors_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "vendors" DROP CONSTRAINT "vendors_vendorCatgeoryID_fkey";

-- DropForeignKey
ALTER TABLE "waste_management_category" DROP CONSTRAINT "waste_management_category_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "waste_management_category" DROP CONSTRAINT "waste_management_category_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "waste_management_category" DROP CONSTRAINT "waste_management_category_updatedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "waste_management_items" DROP CONSTRAINT "waste_management_items_approvedByUserID_fkey";

-- DropForeignKey
ALTER TABLE "waste_management_items" DROP CONSTRAINT "waste_management_items_createdByUserID_fkey";

-- DropForeignKey
ALTER TABLE "waste_management_items" DROP CONSTRAINT "waste_management_items_restaurantSKUItemVariantID_fkey";

-- DropForeignKey
ALTER TABLE "waste_management_items" DROP CONSTRAINT "waste_management_items_restaurantUserID_fkey";

-- DropForeignKey
ALTER TABLE "waste_management_items" DROP CONSTRAINT "waste_management_items_storeSKUItemVariantID_fkey";

-- DropForeignKey
ALTER TABLE "waste_management_items" DROP CONSTRAINT "waste_management_items_updatedByUserID_fkey";

-- DropIndex
DROP INDEX "invoices_orderTypeID_key";

-- AlterTable
ALTER TABLE "admin_users" DROP COLUMN "admin_permission",
ADD COLUMN     "userType" TEXT NOT NULL DEFAULT 'admin';

-- AlterTable
ALTER TABLE "discount_coupons" DROP COLUMN "approvedByUserID",
DROP COLUMN "couponName",
DROP COLUMN "couponProvider",
DROP COLUMN "createdByUserID",
DROP COLUMN "updatedByUserID",
ADD COLUMN     "SKUItemID" TEXT,
ADD COLUMN     "SKUItemVariantID" TEXT,
ADD COLUMN     "brandID" TEXT,
ADD COLUMN     "categoryID" TEXT,
ADD COLUMN     "discountAmount" INTEGER,
ADD COLUMN     "discountType" TEXT NOT NULL,
ADD COLUMN     "endDate" TIMESTAMP(3),
ADD COLUMN     "startDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "subCategoryID" TEXT,
ADD COLUMN     "vendorID" TEXT,
ALTER COLUMN "enabled" SET DEFAULT true;

-- AlterTable
ALTER TABLE "invoices" DROP COLUMN "invoiceNumber",
DROP COLUMN "orderTypeID",
DROP COLUMN "paymentStatus",
DROP COLUMN "paymentType",
DROP COLUMN "restaurantID",
ADD COLUMN     "tranSactionID" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "store_SKU_category" DROP COLUMN "approvedByUserID",
DROP COLUMN "createdByUserID",
DROP COLUMN "isVeg",
DROP COLUMN "updatedByUserID";

-- AlterTable
ALTER TABLE "store_SKU_item_variants" DROP COLUMN "SKUItemVariantExpirationDate",
DROP COLUMN "approvedByUserID",
DROP COLUMN "createdByUserID",
DROP COLUMN "updatedByUserID",
ADD COLUMN     "SKUItemVairantColor" TEXT,
ADD COLUMN     "SKUItemVariantsBaseRate" INTEGER NOT NULL,
ADD COLUMN     "SKUItemVariantsDiscountRate" INTEGER;

-- AlterTable
ALTER TABLE "store_SKU_items" DROP COLUMN "approvedByUserID",
DROP COLUMN "createdByUserID",
DROP COLUMN "storeSKUSectionID",
DROP COLUMN "updatedByUserID";

-- AlterTable
ALTER TABLE "store_inventory" DROP COLUMN "restaurandID",
ADD COLUMN     "vendorID" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "store_inventory_details" DROP COLUMN "issuedQuantity",
DROP COLUMN "purchasedQuantity",
DROP COLUMN "wastedQuantity",
ADD COLUMN     "saleQuantity" INTEGER NOT NULL;

-- DropTable
DROP TABLE "_admin_permissionsToadmin_roles";

-- DropTable
DROP TABLE "_restaurant_permissionsTorestaurant_roles";

-- DropTable
DROP TABLE "admin_permissions";

-- DropTable
DROP TABLE "document_uploads";

-- DropTable
DROP TABLE "gas_readings";

-- DropTable
DROP TABLE "non_cahrgable_items";

-- DropTable
DROP TABLE "non_chargable_category";

-- DropTable
DROP TABLE "online_order_average_time";

-- DropTable
DROP TABLE "order_type";

-- DropTable
DROP TABLE "restaurant";

-- DropTable
DROP TABLE "restaurant_SKU_category";

-- DropTable
DROP TABLE "restaurant_SKU_groups";

-- DropTable
DROP TABLE "restaurant_SKU_item_variants";

-- DropTable
DROP TABLE "restaurant_SKU_items";

-- DropTable
DROP TABLE "restaurant_expense_category";

-- DropTable
DROP TABLE "restaurant_expenses";

-- DropTable
DROP TABLE "restaurant_issued_items";

-- DropTable
DROP TABLE "restaurant_issues";

-- DropTable
DROP TABLE "restaurant_permissions";

-- DropTable
DROP TABLE "restaurant_recquisition_items";

-- DropTable
DROP TABLE "restaurant_recquisitions";

-- DropTable
DROP TABLE "restaurant_roles";

-- DropTable
DROP TABLE "restaurant_users";

-- DropTable
DROP TABLE "sales_data_item_wise";

-- DropTable
DROP TABLE "store_SKU_item_variants_purchase_rates";

-- DropTable
DROP TABLE "store_SKU_sections";

-- DropTable
DROP TABLE "store_purchase";

-- DropTable
DROP TABLE "vendor_categories";

-- DropTable
DROP TABLE "vendors";

-- DropTable
DROP TABLE "waste_management_category";

-- DropTable
DROP TABLE "waste_management_items";

-- CreateTable
CREATE TABLE "vendor_roles" (
    "id" TEXT NOT NULL,
    "roleName" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "vendor_roles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "vendor_users" (
    "id" TEXT NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT,
    "email" TEXT NOT NULL,
    "phoneNumber" TEXT NOT NULL,
    "addressLine1" TEXT,
    "addressLine2" TEXT,
    "city" TEXT,
    "state" TEXT,
    "country" TEXT,
    "zipCode" INTEGER,
    "countryCode" TEXT,
    "gender" TEXT,
    "dateOfBirth" TIMESTAMP(3),
    "userName" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "vendor_rolesId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "userType" TEXT NOT NULL DEFAULT 'vendor',

    CONSTRAINT "vendor_users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "store_SKU_sub_category" (
    "id" TEXT NOT NULL,
    "SKUSubCategoryName" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "SKUCategoryID" TEXT NOT NULL,

    CONSTRAINT "store_SKU_sub_category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "brand" (
    "id" TEXT NOT NULL,
    "brandName" TEXT NOT NULL,
    "approvalStatus" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "brand_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "discount" (
    "id" TEXT NOT NULL,
    "discountType" TEXT NOT NULL,
    "discountAmount" INTEGER,
    "vendorID" TEXT,
    "categoryID" TEXT,
    "subCategoryID" TEXT,
    "brandID" TEXT,
    "SKUItemVariantID" TEXT,
    "SKUItemID" TEXT,
    "startDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "endDate" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "discount_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "shipping_discount" (
    "id" TEXT NOT NULL,
    "discountType" TEXT NOT NULL,
    "discountAmount" INTEGER,
    "vendorID" TEXT,
    "categoryID" TEXT,
    "subCategoryID" TEXT,
    "brandID" TEXT,
    "SKUItemVariantID" TEXT,
    "SKUItemID" TEXT,
    "startDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "endDate" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "shipping_discount_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "discount_vouchers" (
    "id" TEXT NOT NULL,
    "discountType" TEXT NOT NULL,
    "discountAmount" INTEGER,
    "vendorID" TEXT,
    "categoryID" TEXT,
    "subCategoryID" TEXT,
    "brandID" TEXT,
    "SKUItemVariantID" TEXT,
    "SKUItemID" TEXT,
    "startDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "endDate" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "discount_vouchers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT,
    "email" TEXT NOT NULL,
    "phoneNumber" TEXT NOT NULL,
    "addressLine1" TEXT,
    "addressLine2" TEXT,
    "city" TEXT,
    "state" TEXT,
    "country" TEXT,
    "zipCode" INTEGER,
    "countryCode" TEXT,
    "gender" TEXT,
    "dateOfBirth" TIMESTAMP(3),
    "password" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "userType" TEXT NOT NULL DEFAULT 'user',

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user_cart" (
    "id" TEXT NOT NULL,
    "userID" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "user_cart_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cart_items" (
    "id" TEXT NOT NULL,
    "SKUItemVariantID" TEXT NOT NULL,
    "cartID" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "qty" INTEGER NOT NULL,
    "totalPrice" INTEGER NOT NULL,
    "rate" INTEGER NOT NULL,

    CONSTRAINT "cart_items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "bookings" (
    "id" TEXT NOT NULL,
    "SKUItemVariantID" TEXT NOT NULL,
    "userID" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "qty" INTEGER NOT NULL,
    "totalPrice" INTEGER NOT NULL,
    "rate" INTEGER NOT NULL,
    "shippingAddress" JSONB NOT NULL,
    "billingAddress" JSONB NOT NULL,

    CONSTRAINT "bookings_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "transactions" (
    "id" TEXT NOT NULL,
    "bookingID" TEXT NOT NULL,
    "subTotal" INTEGER NOT NULL,
    "VAT" INTEGER NOT NULL,
    "discount" INTEGER NOT NULL,
    "shipping" INTEGER NOT NULL,
    "total" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "transactions_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "vendor_roles_roleName_key" ON "vendor_roles"("roleName");

-- CreateIndex
CREATE UNIQUE INDEX "vendor_users_email_key" ON "vendor_users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "vendor_users_phoneNumber_key" ON "vendor_users"("phoneNumber");

-- CreateIndex
CREATE UNIQUE INDEX "vendor_users_userName_key" ON "vendor_users"("userName");

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "users_phoneNumber_key" ON "users"("phoneNumber");

-- CreateIndex
CREATE UNIQUE INDEX "users_dateOfBirth_key" ON "users"("dateOfBirth");

-- CreateIndex
CREATE UNIQUE INDEX "user_cart_userID_key" ON "user_cart"("userID");

-- AddForeignKey
ALTER TABLE "admin_users" ADD CONSTRAINT "admin_users_admin_rolesId_fkey" FOREIGN KEY ("admin_rolesId") REFERENCES "admin_roles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vendor_users" ADD CONSTRAINT "vendor_users_vendor_rolesId_fkey" FOREIGN KEY ("vendor_rolesId") REFERENCES "vendor_roles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_SKU_sub_category" ADD CONSTRAINT "store_SKU_sub_category_SKUCategoryID_fkey" FOREIGN KEY ("SKUCategoryID") REFERENCES "store_SKU_category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount" ADD CONSTRAINT "discount_categoryID_fkey" FOREIGN KEY ("categoryID") REFERENCES "store_SKU_category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount" ADD CONSTRAINT "discount_subCategoryID_fkey" FOREIGN KEY ("subCategoryID") REFERENCES "store_SKU_sub_category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount" ADD CONSTRAINT "discount_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES "brand"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount" ADD CONSTRAINT "discount_SKUItemVariantID_fkey" FOREIGN KEY ("SKUItemVariantID") REFERENCES "store_SKU_item_variants"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount" ADD CONSTRAINT "discount_SKUItemID_fkey" FOREIGN KEY ("SKUItemID") REFERENCES "store_SKU_items"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount" ADD CONSTRAINT "discount_vendorID_fkey" FOREIGN KEY ("vendorID") REFERENCES "vendor_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "shipping_discount" ADD CONSTRAINT "shipping_discount_categoryID_fkey" FOREIGN KEY ("categoryID") REFERENCES "store_SKU_category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "shipping_discount" ADD CONSTRAINT "shipping_discount_subCategoryID_fkey" FOREIGN KEY ("subCategoryID") REFERENCES "store_SKU_sub_category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "shipping_discount" ADD CONSTRAINT "shipping_discount_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES "brand"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "shipping_discount" ADD CONSTRAINT "shipping_discount_SKUItemVariantID_fkey" FOREIGN KEY ("SKUItemVariantID") REFERENCES "store_SKU_item_variants"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "shipping_discount" ADD CONSTRAINT "shipping_discount_SKUItemID_fkey" FOREIGN KEY ("SKUItemID") REFERENCES "store_SKU_items"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "shipping_discount" ADD CONSTRAINT "shipping_discount_vendorID_fkey" FOREIGN KEY ("vendorID") REFERENCES "vendor_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_coupons" ADD CONSTRAINT "discount_coupons_categoryID_fkey" FOREIGN KEY ("categoryID") REFERENCES "store_SKU_category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_coupons" ADD CONSTRAINT "discount_coupons_subCategoryID_fkey" FOREIGN KEY ("subCategoryID") REFERENCES "store_SKU_sub_category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_coupons" ADD CONSTRAINT "discount_coupons_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES "brand"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_coupons" ADD CONSTRAINT "discount_coupons_SKUItemVariantID_fkey" FOREIGN KEY ("SKUItemVariantID") REFERENCES "store_SKU_item_variants"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_coupons" ADD CONSTRAINT "discount_coupons_SKUItemID_fkey" FOREIGN KEY ("SKUItemID") REFERENCES "store_SKU_items"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_coupons" ADD CONSTRAINT "discount_coupons_vendorID_fkey" FOREIGN KEY ("vendorID") REFERENCES "vendor_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_vouchers" ADD CONSTRAINT "discount_vouchers_categoryID_fkey" FOREIGN KEY ("categoryID") REFERENCES "store_SKU_category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_vouchers" ADD CONSTRAINT "discount_vouchers_subCategoryID_fkey" FOREIGN KEY ("subCategoryID") REFERENCES "store_SKU_sub_category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_vouchers" ADD CONSTRAINT "discount_vouchers_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES "brand"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_vouchers" ADD CONSTRAINT "discount_vouchers_SKUItemVariantID_fkey" FOREIGN KEY ("SKUItemVariantID") REFERENCES "store_SKU_item_variants"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_vouchers" ADD CONSTRAINT "discount_vouchers_SKUItemID_fkey" FOREIGN KEY ("SKUItemID") REFERENCES "store_SKU_items"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discount_vouchers" ADD CONSTRAINT "discount_vouchers_vendorID_fkey" FOREIGN KEY ("vendorID") REFERENCES "vendor_users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "store_inventory" ADD CONSTRAINT "store_inventory_vendorID_fkey" FOREIGN KEY ("vendorID") REFERENCES "vendor_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_cart" ADD CONSTRAINT "user_cart_userID_fkey" FOREIGN KEY ("userID") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "cart_items" ADD CONSTRAINT "cart_items_SKUItemVariantID_fkey" FOREIGN KEY ("SKUItemVariantID") REFERENCES "store_SKU_item_variants"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "cart_items" ADD CONSTRAINT "cart_items_cartID_fkey" FOREIGN KEY ("cartID") REFERENCES "user_cart"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "bookings" ADD CONSTRAINT "bookings_SKUItemVariantID_fkey" FOREIGN KEY ("SKUItemVariantID") REFERENCES "store_SKU_item_variants"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "bookings" ADD CONSTRAINT "bookings_userID_fkey" FOREIGN KEY ("userID") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "transactions" ADD CONSTRAINT "transactions_bookingID_fkey" FOREIGN KEY ("bookingID") REFERENCES "bookings"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "invoices" ADD CONSTRAINT "invoices_tranSactionID_fkey" FOREIGN KEY ("tranSactionID") REFERENCES "transactions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
