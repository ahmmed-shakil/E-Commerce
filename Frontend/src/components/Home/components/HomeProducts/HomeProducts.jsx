import React from "react";
import { Layout } from "../../../shared/Layout/Layout";
import Line from "../../../shared/Line";
import ProductContainer from "../../../Products/ProductContainer/ProductContainer";

export const HomeProducts = () => {
  return (
    <div>
      <Layout>
        <h2 className=" title">Just For You</h2>
        <Line />
        <div className=" bg-slate-50 dark:bg-slate-900 shadow p-3 rounded-md mt-5">
          <ProductContainer />
          <div className=" my-3 flex justify-center">
            <button className=" gradient-background text-slate-100 py-2 px-3 rounded-md">
              LOAD MORE
            </button>
          </div>
        </div>
      </Layout>
    </div>
  );
};
