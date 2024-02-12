import React from "react";
import { Layout } from "../../shared/Layout/Layout";
import DesktopHeader from "../../shared/DesktopHeader";
import { ProductGallery } from "./components/ProductGallery/ProductGallery";
import { BuyingDetails } from "./components/BuyingDetails/BuyingDetails";
import { ProductInfo } from "./components/ProductInfo/ProductInfo";

const ProductDetails = () => {
  return (
    <div>
      <DesktopHeader />
      <Layout>
        <div className=" my-10 space-x-16">
          <div className=" bg-slate-50 dark:bg-slate-800 p-2 rounded-md grid grid-cols-product items-stretch">
            <ProductGallery />
            <BuyingDetails />
            <ProductInfo />
          </div>
        </div>
      </Layout>
    </div>
  );
};

export default ProductDetails;
