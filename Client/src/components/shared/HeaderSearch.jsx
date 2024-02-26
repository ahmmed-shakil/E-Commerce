import { MagnifyingGlassCircleIcon } from "@heroicons/react/24/solid";
import React from "react";

const HeaderSearch = () => {
  return (
    <div className=" relative">
      <input
        type="text"
        className=" py-3 w-full rounded-lg px-3 text-sm outline-0"
        placeholder="Search in S-MART"
      />
      <button className=" bg-slate-400 bg-opacity-30 absolute right-0 text-primary h-full px-3 py-1">
        <MagnifyingGlassCircleIcon height={30} width={30} />
      </button>
    </div>
  );
};

export default HeaderSearch;
