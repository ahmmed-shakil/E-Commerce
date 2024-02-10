import React from "react";
import ProductCard from "../ProductCard/ProductCard";

const ProductContainer = () => {
  return (
    <div className=" py-4 grid grid-cols-2 md:grid-cols-6 gap-4">
      <ProductCard />
      <ProductCard />
      <ProductCard />
      <ProductCard />
      <ProductCard />
      <ProductCard />
    </div>
  );
};

export default ProductContainer;
