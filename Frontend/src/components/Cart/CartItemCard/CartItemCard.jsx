import React from "react";
import img from "../../../images/product.jpg";
import Stepper from "../../shared/Stepper/Stepper";
import { TrashIcon } from "@heroicons/react/24/solid";

const CartItemCard = () => {
  return (
    <div className="p-2 rounded-md shadow-md bg-slate-50 dark:bg-slate-700 mb-3 grid grid-cols-cartCard items-center justify-between">
      <div className=" flex items-center gap-3">
        <img
          src={img}
          className="h-20 w-20 rounded-md object-cover"
          alt="Product"
        />
        <div>
          <h6 className=" font-semibold">
            Premium Quality Winter Cloths Storage Organizer Bag / Eco Friendly
            Wardrobe Organizer
          </h6>
          <div className=" flex items-center gap-2">
            <div className=" w-1 h-1 rounded-full bg-primary"></div>
            <p>Size: XL</p>
            <div className=" w-1 h-1 rounded-full bg-primary"></div>
            <p>4 items left in stock</p>
            <div className=" w-1 h-1 rounded-full bg-primary"></div>
            <p className=" font-semibold text-primary">$500</p>
          </div>
        </div>
      </div>
      {/* <div className=" w-full me-0"> */}
      <Stepper />
      <button className="flex items-center gap-2 justify-center text-primary font-semibold">
        <TrashIcon width={16} height={16} />
        <p className=" text-sm">DELETE</p>
      </button>
      {/* </div> */}
    </div>
  );
};

export default CartItemCard;
