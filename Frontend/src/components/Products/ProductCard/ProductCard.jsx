import React from "react";
import product from "../../../images/product.jpg";
import { StarIcon } from "@heroicons/react/24/solid";
const ProductCard = () => {
  return (
    <div className=" bg-slate-100 dark:bg-slate-800 hover:shadow-xl cursor-pointer rounded-md">
      <img src={product} alt="product" className=" h-44 w-full object-cover" />
      <div className=" mt-2 p-2">
        <h6 className=" text-md font-semibold">
          Stylish and Fashionable Winter and Summer...
        </h6>
        <h3 className=" text-lg text-primary font-bold mt-2">$490</h3>
        <h3 className=" text-md mb-2 flex items-center gap-2">
          <span className=" line-through font-semibold">$850</span>
          <span className=" ">-66%</span>
        </h3>
        <div className=" flex items-center gap-1">
          <StarIcon width={14} height={14} />
          <StarIcon width={14} height={14} />
          <StarIcon width={14} height={14} />
          <StarIcon width={14} height={14} />
          <StarIcon width={14} height={14} />
          <p>(133)</p>
        </div>
      </div>
    </div>
  );
};

export default ProductCard;
