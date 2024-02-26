import React from "react";
import { Layout } from "../shared/Layout/Layout";
import DesktopHeader from "../shared/DesktopHeader";
import CartItemCard from "./CartItemCard/CartItemCard";
import { NavLink } from "react-router-dom";

const Cart = () => {
  return (
    <div>
      <DesktopHeader />
      <Layout>
        <div className=" my-10 grid grid-cols-cart gap-3 items-start">
          <div>
            <CartItemCard />
            <CartItemCard />
            <CartItemCard />
            <CartItemCard />
            <CartItemCard />
            <CartItemCard />
          </div>
          <div className="p-2 rounded-md shadow-md bg-slate-50 dark:bg-slate-700 pb-4">
            <h4 className=" mb-4 font-semibold">Order Summary</h4>
            <div className=" space-y-1">
              <div className=" grid grid-cols-sixtyForty items-center">
                <p className=" text-left">Subtotal (5 items)</p>
                <p className=" text-right">$500</p>
              </div>
              <div className=" grid grid-cols-sixtyForty items-center">
                <p className=" text-left">Shipping Charge</p>
                <p className=" text-right">$500</p>
              </div>
              <div className=" grid grid-cols-sixtyForty items-center">
                <p className=" text-left">Shipping Charge Discount</p>
                <p className=" text-right">-$500</p>
              </div>
              {/* <div className=" grid grid-cols-cartSummary items-stretch gap-2">
                <input
                  type="text"
                  placeholder="Enter Coupon"
                  className=" text-sm h-10 rounded-sm outline-none border px-2"
                />
                <button className=" bg-final text-sm text-slate-50 rounded-md w-full">
                  APPLY
                </button>
              </div> */}
              <div className=" grid grid-cols-sixtyForty items-center font-semibold">
                <p className=" text-left">Total</p>
                <p className=" text-right text-primary">$500</p>
              </div>
              <NavLink to={`/checkout`}>
                <button className=" btn-primary w-full">
                  PROCEED TO CHECKOUT(3)
                </button>
              </NavLink>
              <p className=" text-sm italic">
                *Voucher and promotion discounts will be applicable in checkout
              </p>
            </div>
          </div>
        </div>
      </Layout>
    </div>
  );
};

export default Cart;
