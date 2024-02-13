import React from "react";
import { Layout } from "../../shared/Layout/Layout";
import DesktopHeader from "../../shared/DesktopHeader";
import { ProductGallery } from "./components/ProductGallery/ProductGallery";
import { BuyingDetails } from "./components/BuyingDetails/BuyingDetails";
import { ProductInfo } from "./components/ProductInfo/ProductInfo";
import Tabs from "./Tabs/Tabs";

const ProductDetails = () => {
  return (
    <div>
      <DesktopHeader />
      <Layout>
        <div className=" my-10 space-y-8">
          <div className=" bg-slate-50 dark:bg-slate-800 px-2 py-5 rounded-md grid grid-cols-product items-stretch">
            <ProductGallery />
            <BuyingDetails />
            <ProductInfo />
          </div>
          <div>
            <Tabs />
          </div>
        </div>
      </Layout>
    </div>
  );
};

export default ProductDetails;
