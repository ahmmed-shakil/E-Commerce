import { TvIcon } from "@heroicons/react/24/solid";
import React from "react";

const Filters = () => {
  return (
    <div className=" bg-slate-50 dark:bg-slate-800 shadow rounded-md p-2 space-y-6">
      <h3 className=" font-bold">Filters</h3>
      <div className=" text-sm space-y-2">
        <h4 className=" font-semibold">Promotion & Services</h4>
        <button className=" border border-slate-200 hover:border-primary text-primary text-white w-full rounded-md shadow flex items-center justify-center gap-2 py-1">
          <TvIcon height={16} width={16} className=" text-primary" />
          <p className=" text-primary">Free Delivery</p>
        </button>
        <button className=" border border-slate-200 hover:border-primary text-primary text-white w-full rounded-md shadow flex items-center justify-center gap-2 py-1">
          <TvIcon height={16} width={16} className=" text-primary" />
          <p className=" text-primary">Discounted Items</p>
        </button>
      </div>
      <div className=" text-sm space-y-2">
        <h4 className=" font-semibold">Category</h4>
        <div className=" flex items-center gap-2">
          <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" />
          <label for="vehicle1"> Category 1</label>
        </div>
        <div className=" flex items-center gap-2">
          <input type="checkbox" id="vehicle2" name="vehicle2" value="Bike" />
          <label for="vehicle2"> Category 2</label>
        </div>
      </div>
      <div className=" text-sm space-y-2">
        <h4 className=" font-semibold">Size</h4>
        <div className=" flex items-center gap-2">
          <input type="checkbox" id="vehicle13" name="vehicle1" value="Bike" />
          <label for="vehicle13"> M</label>
        </div>
        <div className=" flex items-center gap-2">
          <input type="checkbox" id="vehicle23" name="vehicle2" value="Bike" />
          <label for="vehicle23"> L</label>
        </div>
      </div>
      <div className=" text-sm space-y-2">
        <h4 className=" font-semibold">Price</h4>
        <div className=" flex items-stretch h-8 justify-between gap-2">
          <input type="number" className="" placeholder="Min" />
          <input type="number" placeholder="Max" />
          <button className=" bg-final text-slate-50 px-2">Apply</button>
        </div>
      </div>
      <div className=" text-sm space-y-2">
        <h4 className=" font-semibold">Ratings</h4>
        <div className=" flex items-center gap-2">
          <input type="checkbox" id="vehicle13" name="vehicle1" value="Bike" />
          <label for="vehicle13"> M</label>
        </div>
        <div className=" flex items-center gap-2">
          <input type="checkbox" id="vehicle23" name="vehicle2" value="Bike" />
          <label for="vehicle23"> L</label>
        </div>
      </div>
    </div>
  );
};

export default Filters;
