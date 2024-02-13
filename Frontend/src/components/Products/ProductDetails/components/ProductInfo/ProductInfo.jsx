import {
  EyeDropperIcon,
  MapIcon,
  MapPinIcon,
  VideoCameraSlashIcon,
} from "@heroicons/react/24/solid";
import React from "react";

export const ProductInfo = () => {
  return (
    <div className=" space-y-3 ps-5">
      <div>
        <h6 className=" text-sm mb-2">Delivery</h6>
        <div className=" flex items-center gap-4 justify-between py-2 px-2 border border-t-0 border-s-0 border-e-0 ">
          <div className=" flex justify-center gap-3">
            <MapPinIcon className=" w-5 h-5" />
            <h6>Gouripur, Mymenshing</h6>
          </div>
          <h6 className=" text-final font-semibold cursor-pointer text-sm">
            CHANGE
          </h6>
        </div>
        <div className=" flex items-start gap-4 justify-between border py-2 px-2 border-t-0 border-s-0 border-e-0">
          <div className=" flex justify-center gap-3">
            <EyeDropperIcon className=" w-5 h-5" />
            <h6>Free Delivery on minimum sepnd $500</h6>
          </div>
          <h6 className=" font-semibold">FREE</h6>
        </div>
        <div className=" flex items-center gap-4 justify-between border py-2 px-2 border-t-0 border-s-0 border-e-0">
          <div className=" flex justify-center gap-3">
            <VideoCameraSlashIcon className=" w-5 h-5" />
            <h6>Cash on Delivery available</h6>
          </div>
        </div>
      </div>
      <div>
        <h6 className=" text-sm mb-2">Service</h6>
        <div className=" flex items-center gap-4 justify-between py-2 px-2 border border-t-0 border-s-0 border-e-0 ">
          <div className=" flex justify-center gap-3 text-final font-semibold">
            <MapPinIcon className=" w-5 h-5" />
            <h6>100% Authentic from Trusted Brand</h6>
          </div>
        </div>
        <div className=" flex items-center gap-4 justify-between py-2 px-2 border border-t-0 border-s-0 border-e-0 ">
          <div className=" flex justify-center gap-3 text-final font-semibold">
            <MapPinIcon className=" w-5 h-5" />
            <h6>14 days free & easy return</h6>
          </div>
        </div>
        <div className=" flex items-center gap-4 justify-between py-2 px-2 border border-t-0 border-s-0 border-e-0 ">
          <div className=" flex justify-center gap-3 text-final font-semibold">
            <MapPinIcon className=" w-5 h-5" />
            <h6>2 Years Seller Warranty</h6>
          </div>
        </div>
      </div>
      <div className=" mt-4 flex justify-between items-center">
        <div>
          <h6 className=" text-sm">Sold By</h6>
          <h3 className=" font-semibold">PARK POINT</h3>
        </div>
        <button className=" bg-transparent text-final font-semibold text-sm me-5">
          View Store
        </button>
      </div>
    </div>
  );
};
