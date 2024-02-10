import React from "react";
import { Layout } from "../../../../shared/Layout/Layout";
import Line from "../../../../shared/Line";
import CategoryCard from "../CategoryCard/CategoryCard";

export const CategoryContainer = () => {
  return (
    <div>
      <Layout>
        <h2 className=" title">Categories</h2>
        <Line />
        <div className=" py-4 grid grid-cols-2 md:grid-cols-8 gap-1">
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
          <CategoryCard />
        </div>
      </Layout>
    </div>
  );
};
