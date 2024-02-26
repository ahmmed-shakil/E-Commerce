import React from "react";
import DesktopHeader from "../shared/DesktopHeader";
import { Layout } from "../shared/Layout/Layout";
import Filters from "../shared/Filters/Filters";
import Products from "./Products/Products";

const CategoryPage = () => {
  return (
    <div>
      <DesktopHeader />
      <Layout>
        <div className=" my-10">
          <div></div>
          <div className=" my-5 grid grid-cols-admin gap-4">
            <Filters />
            <Products />
          </div>
        </div>
      </Layout>
    </div>
  );
};

export default CategoryPage;
