import React from "react";
import { Layout } from "../../../shared/Layout/Layout";
import Line from "../../../shared/Line";
import ProductContainer from "../../../Products/ProductContainer/ProductContainer";

export const FlashSaleContainer = () => {
  return (
    <div>
      <Layout>
        <h2 className=" title">Flash Sale</h2>
        <Line />
        <div className=" bg-slate-50 dark:bg-slate-900 shadow p-3 rounded-md mt-5">
          <div className=" flex justify-between items-center">
            <h6 className=" text-primary font-semibold">On Sale Now</h6>
            <button className=" btn-primary-outline">SHOP MORE</button>
          </div>
          <ProductContainer />
        </div>
      </Layout>
    </div>
  );
};
