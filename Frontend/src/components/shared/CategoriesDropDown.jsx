import { ChevronDownIcon } from "@heroicons/react/24/solid";
import React, { useState } from "react";

const CategoriesDropDown = () => {
  const [isOpen, setIsOpen] = useState(false);
  return (
    <div>
      <div className=" flex items-center gap-1 text-md font-semibold cursor-pointer hover:bg-slate-400 py-2 hover:bg-opacity-40 px-2 rounded-md">
        <h6>Categories</h6>
        <ChevronDownIcon width={14} height={20} />
      </div>
    </div>
  );
};

export default CategoriesDropDown;
