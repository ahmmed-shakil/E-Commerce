import {
  ShareIcon,
  ShoppingBagIcon,
  StarIcon,
} from "@heroicons/react/24/solid";
import React from "react";
import Stepper from "../../../../shared/Stepper/Stepper";
import product from "../../../../../images/cat.jpg";

export const BuyingDetails = () => {
  return (
    <div>
      <h2 className=" text-xl mb-1">
        Premium Quality Winter Cloths Storage Organizer Bag / Eco Friendly
        Wardrobe Organizer
      </h2>
      <div className=" flex justify-between items-center">
        <div>
          <div className=" flex items-center gap-2">
            <StarIcon height={14} width={14} />
            <StarIcon height={14} width={14} />
            <StarIcon height={14} width={14} />
            <StarIcon height={14} width={14} />
            <StarIcon height={14} width={14} />

            <p>2564</p>
          </div>
          <h6 className=" mt-0 pt-0">
            Brand:{" "}
            <span className=" text-final hover:underline cursor-pointer">
              No brand
            </span>
          </h6>
        </div>
        <div className=" flex items-center gap-2">
          <ShoppingBagIcon height={25} width={25} cursor={"pointer"} />
          <ShareIcon height={25} width={25} cursor={"pointer"} />
        </div>
      </div>
      <div className=" my-5">
        <h4 className=" text-primary text-2xl font-semibold">$490</h4>
        <div className=" flex items-center gap-2">
          <p className=" line-through">$200</p>
          <p>-66%</p>
        </div>
      </div>
      {/* <div className=" flex items-center gap-3 my-3">
        <p>Color: </p>
        <img
          src={product}
          className=" h-10 w-10 border border-primary rounded-md"
        />
        <img
          src={product}
          className=" h-10 w-10 border border-slate-950 rounded-md"
        />
        <img
          src={product}
          className=" h-10 w-10 border border-slate-950 rounded-md"
        />
        <img
          src={product}
          className=" h-10 w-10 border border-slate-950 rounded-md"
        />
        <img
          src={product}
          className=" h-10 w-10 border border-slate-950 rounded-md"
        />
        <img
          src={product}
          className=" h-10 w-10 border border-slate-950 rounded-md"
        />
      </div> */}
      <div className=" flex items-center gap-3 my-3">
        <p>Size: </p>
        <p className=" text-sm font-light px-4 py-2 rounded-md border border-primary">
          M
        </p>
        <p className=" text-sm font-light px-4 py-2 rounded-md border border-slate-950">
          L
        </p>
        <p className=" text-sm font-light px-4 py-2 rounded-md border border-slate-950">
          XL
        </p>
        <p className=" text-sm font-light px-4 py-2 rounded-md border border-slate-950">
          XXL
        </p>
      </div>
      <div className=" flex items-center gap-2 my-5">
        <p>Quantity:</p>
        <Stepper />
        <p className=" text-sm font-light">Only 4 items left</p>
      </div>
      <div className=" flex justify-between items-center gap-2">
        <button className=" btn-secondary w-full">Buy Now</button>
        <button className=" btn-primary w-full">Add to Cart</button>
      </div>
    </div>
  );
};
