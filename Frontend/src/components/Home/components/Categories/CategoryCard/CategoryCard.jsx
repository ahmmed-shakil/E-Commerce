import React from "react";

import img from "../../../../../images/cat.jpg";

const CategoryCard = () => {
  return (
    <div className=" bg-slate-50 p-3 dark:bg-slate-800 hover:shadow-2xl rounded-md cursor-pointer">
      <img src={img} alt="product" className=" h-36 w-full object-cover" />
      <div className=" mt-2 p-2">
        <h6 className=" text-md font-semibold text-center">StopWatches</h6>
      </div>
    </div>
  );
};

export default CategoryCard;
