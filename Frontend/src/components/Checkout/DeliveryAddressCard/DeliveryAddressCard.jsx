import React from "react";

const DeliveryAddressCard = () => {
  return (
    <div className="p-2 rounded-md shadow-md bg-slate-50 dark:bg-slate-700 mb-3 text-sm">
      <div className=" flex items-center gap-2">
        <p>Deliver To:</p>
        <p>John Smith</p>
      </div>
      <div className=" flex items-center gap-2">
        <p className=" pr-3 border border-t-0 border-s-0 border-b-0 border-primary">
          014235346436
        </p>
        <p>Mymensingh, Dhaka, Bangladesh</p>
        <p className=" text-final font-semibold cursor-pointer">Change</p>
      </div>
      <div className=" flex items-center gap-2">
        <p>Bill to the same address</p>
        <p className=" text-final font-semibold cursor-pointer">Edit</p>
      </div>
      <div className=" flex items-center gap-2">
        <p>Email:</p>
        <p>john@smith.com</p>
        <p className=" text-final font-semibold cursor-pointer">Change</p>
      </div>
    </div>
  );
};

export default DeliveryAddressCard;
