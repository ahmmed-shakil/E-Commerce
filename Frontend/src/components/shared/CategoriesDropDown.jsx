import {
  ChevronDownIcon,
  ChevronRightIcon,
  ChevronUpIcon,
} from "@heroicons/react/24/solid";
import React, { useState } from "react";
import demo from "../../images/Navbar/kurti.jpg";
import { NavLink } from "react-router-dom";

const CategoriesDropDown = () => {
  const [isOpen, setIsOpen] = useState(false);
  const [itemIsOpen, setItemIsOpen] = useState(false);
  const [isCatOpen, setIsCatOpen] = useState(false);
  const [showChevron1, setShowChevron1] = useState(false);
  const [showChevron2, setShowChevron2] = useState(false);
  const handleMouseEnter = () => {
    setIsOpen(true);
  };

  const handleMouseLeave = () => {
    setIsOpen(false);
    setIsCatOpen(false);
    setItemIsOpen(false);
  };
  const handleItemMouseEnter = () => {
    setItemIsOpen(true);
  };

  const handleItemMouseLeave = () => {
    setItemIsOpen(false);
    setIsCatOpen(false);
  };
  const handleItemMouseOnCat = () => {
    setIsCatOpen(true);
  };

  const handleItemMouseLeaveCat = () => {
    setIsCatOpen(false);
  };

  return (
    <div onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
      <div
        className={` flex items-center gap-1 text-md font-semibold cursor-pointer hover:bg-slate-400 py-2 hover:bg-opacity-40 px-2 rounded-md ${
          isOpen && "bg-slate-400 bg-opacity-40"
        }`}
      >
        <h6>Categories</h6>
        {isOpen ? (
          <ChevronUpIcon width={14} height={20} />
        ) : (
          <ChevronDownIcon width={14} height={20} />
        )}
      </div>
      {isOpen && (
        <div
          onMouseLeave={handleItemMouseLeave}
          className=" absolute top-23 left-20 w-11/12 flex items-start gap-1"
        >
          <div
            className="  bg-slate-50 font-500 dark:bg-slate-800 text-slate-800 dark:text-slate-100 text-md p-3 rounded-md shadow-lg
           w-1/5"
          >
            <div
              onMouseEnter={handleItemMouseEnter}
              className=" cursor-pointer hover:bg-slate-200 hover:bg-opacity-40 px-2 rounded-md font-semibold"
            >
              <div className=" flex justify-between items-center">
                <p>Womens and Girls Fashion</p>
                {itemIsOpen ? (
                  <ChevronRightIcon
                    width={20}
                    height={20}
                    className=" text-primary"
                  />
                ) : null}
              </div>
            </div>
          </div>
          {itemIsOpen ? (
            <div
              // onMouseLeave={handleItemMouseLeaveCat}
              className="  bg-slate-50 font-500 dark:bg-slate-800 text-slate-800 dark:text-slate-100 text-md p-3 rounded-md shadow-lg
            w-1/5"
            >
              <div
                onMouseEnter={handleItemMouseOnCat}
                className=" cursor-pointer hover:bg-slate-200 hover:bg-opacity-40 px-2 rounded-md hover:text-primary"
              >
                <div className=" flex justify-between items-center">
                  <NavLink to={`/category/traditional-item`}>
                    <p>Traditional Wear</p>
                  </NavLink>
                  {isCatOpen ? (
                    <ChevronRightIcon
                      width={20}
                      height={20}
                      className=" text-primary"
                    />
                  ) : null}
                </div>
              </div>
            </div>
          ) : null}
          {isCatOpen ? (
            <div
              onMouseLeave={handleItemMouseLeaveCat}
              className="  bg-slate-50 font-500 dark:bg-slate-800 text-slate-800 dark:text-slate-100 text-md p-3 rounded-md shadow-lg
            w-2/5"
            >
              <div className=" cursor-pointer px-2 rounded-md mb-3">
                <div className=" flex justify-between items-center">
                  <p>Traditional Wear</p>
                </div>
              </div>
              <div className=" p-1 grid grid-cols-4 gap-3 items-center">
                <NavLink to={`/salwar-kameez`}>
                  <div className=" flex flex-col items-center cursor-pointer hover:text-primary">
                    <div className=" h-10 rounded-full">
                      <img
                        src={demo}
                        alt="Salwaar"
                        className=" rounded-full h-10 w-full"
                      />
                    </div>
                    <p className=" text-sm text-center ">Salwaar Kameez</p>
                  </div>
                </NavLink>
                <div className=" flex flex-col items-center cursor-pointer">
                  <div className=" h-10 rounded-full">
                    <img
                      src={demo}
                      alt="Salwaar"
                      className=" rounded-full h-10 w-full"
                    />
                  </div>
                  <p className=" text-sm text-center">Salwaar Kameez</p>
                </div>
              </div>
            </div>
          ) : null}
        </div>
      )}
    </div>
  );
};

export default CategoriesDropDown;
