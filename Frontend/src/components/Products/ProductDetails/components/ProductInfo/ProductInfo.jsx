import {
  EyeDropperIcon,
  MapIcon,
  MapPinIcon,
  VideoCameraSlashIcon,
} from "@heroicons/react/24/solid";
import React from "react";

export const ProductInfo = () => {
  return (
    <div className=" space-y-10 ps-5">
      <div>
        <h6 className=" text-sm mb-2">Delivery</h6>
        <div className=" flex items-center gap-4 justify-between py-4 px-1 border ">
          <div className=" flex justify-center gap-3">
            <MapPinIcon className=" w-5 h-5" />
            <h6>Gouripur, Mymenshing</h6>
          </div>
          <h6 className=" text-final font-semibold cursor-pointer">CHANGE</h6>
        </div>
        <div className=" flex items-center gap-4 justify-between border py-4 px-1">
          <div className=" flex justify-center gap-3">
            <EyeDropperIcon className=" w-5 h-5" />
            <h6>Free Delivery on minimum sepnd $500</h6>
          </div>
          <h6 className=" font-semibold">FREE</h6>
        </div>
        <div className=" flex items-center gap-4 justify-between border py-4 px-1">
          <div className=" flex justify-center gap-3">
            <VideoCameraSlashIcon className=" w-5 h-5" />
            <h6>Cash on Delivery available</h6>
          </div>
        </div>
      </div>
    </div>
  );
};
