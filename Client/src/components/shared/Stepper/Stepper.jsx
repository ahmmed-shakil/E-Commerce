import { MinusIcon, PlusIcon } from "@heroicons/react/24/solid";
import React from "react";

const Stepper = () => {
  return (
    <div className=" flex items-center gap-5 px-3">
      <button className=" border border-primary hover:bg-primary hover:text-slate-100 p-2 rounded-md">
        <MinusIcon className=" w-5 h-5" />
      </button>
      <p>4</p>
      <button className=" border border-primary hover:bg-primary hover:text-slate-100 p-2 rounded-md">
        <PlusIcon className=" w-5 h-5" />
      </button>
    </div>
  );
};

export default Stepper;
