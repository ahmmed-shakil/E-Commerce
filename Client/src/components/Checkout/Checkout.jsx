import React from "react";
import DesktopHeader from "../shared/DesktopHeader";
import { Layout } from "../shared/Layout/Layout";
import CheckoutItemCard from "./CheckoutItemCard/CheckoutItemCard";
import DeliveryAddressCard from "./DeliveryAddressCard/DeliveryAddressCard";
import { NavLink } from "react-router-dom";
import { ChartBarSquareIcon } from "@heroicons/react/24/solid";

const Checkout = () => {
  return (
    <div>
      <DesktopHeader />
      <Layout>
        <div className=" my-10 grid grid-cols-cart gap-3 items-start ">
          <div>
            <DeliveryAddressCard />
            <CheckoutItemCard />
            <CheckoutItemCard />
            <CheckoutItemCard />
          </div>
          <div className="p-2 rounded-md shadow-md bg-slate-50 dark:bg-slate-700 pb-4  ">
            <div className=" my-5">
              <p className=" font-semibold">Discount & Payment</p>
              <div className=" flex justify-between items-center">
                <div className=" flex items-center gap-1 text-primary font-semibold">
                  <ChartBarSquareIcon height={16} width={16} />
                  <p>S-MART Voucher</p>
                </div>
                <p>No voucher applied</p>
              </div>
              <button className=" btn-secondary w-full text-sm font-semibold">
                VIEW AVAILABLE VOUCHERS
              </button>
              <div className=" grid grid-cols-cartSummary items-stretch gap-2 mt-3">
                <input
                  type="text"
                  placeholder="Enter PROMOTION CODE"
                  className=" text-sm h-10 rounded-sm outline-none border px-2"
                />
                <button className=" bg-final text-sm text-slate-50 rounded-md w-full">
                  APPLY
                </button>
              </div>
            </div>
            <h4 className=" mb-2 font-semibold">Order Summary</h4>
            <div className=" space-y-0">
              <div className=" grid grid-cols-sixtyForty items-center">
                <p className=" text-left font-semibold">Items Total</p>
                <p className=" text-right">$500</p>
              </div>
              <div className=" grid grid-cols-sixtyForty items-center">
                <p className=" text-left font-semibold">Shipping Charge</p>
                <p className=" text-right">$500</p>
              </div>
              <div className=" grid grid-cols-sixtyForty items-center">
                <p className=" text-left font-semibold">
                  Shipping Charge Discount
                </p>
                <p className=" text-right">-$500</p>
              </div>
              <div className=" grid grid-cols-sixtyForty items-center">
                <p className=" text-left font-semibold">
                  Voucher/Promotion Discount
                </p>
                <p className=" text-right">-$500</p>
              </div>

              <div className=" grid grid-cols-sixtyForty items-center font-semibold">
                <p className=" text-left font-bold">Total</p>
                <p className=" text-right text-primary">$500</p>
              </div>
              <p className=" text-sm font-semibold text-right mb-3">
                VAT included, where applicable
              </p>
              <NavLink to={`/checkout`}>
                <button className=" btn-primary w-full">PLACE ORDER</button>
              </NavLink>
            </div>
          </div>
        </div>
      </Layout>
    </div>
  );
};

export default Checkout;
