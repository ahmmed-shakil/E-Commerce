import React from "react";
import { Layout } from "../../../shared/Layout/Layout";
import {
  ArrowLeftOnRectangleIcon,
  ComputerDesktopIcon,
} from "@heroicons/react/24/solid";
import Line from "../../../shared/Line";

const Features = () => {
  return (
    <div>
      <Layout>
        <div className=" grid grid-cols-2 md:grid-cols-4 justify-around items-center gap-2">
          <div
            className=" group shadow-xl  hover:shadow-gray-400 dark:hover:shadow-gray-900 gradient-background flex items-center justify-center
           rounded-md py-5 px-2 hover:text-gray-200 gap-3 hover:bg-opacity-60 transition-all duration-200 delay-75 ease-in-out"
          >
            <ArrowLeftOnRectangleIcon className="h-6 w-6 text-slate-100 group-hover:text-gray-200 transition-all duration-200 delay-75 ease-in-out" />
            <div>
              <h6 className="text-md font-medium text-center text-slate-100">
                Safe Payments
              </h6>
            </div>
          </div>
          <div
            className=" group shadow-xl  hover:shadow-gray-400 dark:hover:shadow-gray-900 gradient-background flex items-center justify-center
           rounded-md py-5 px-2 hover:text-gray-200 gap-3 hover:bg-opacity-60 transition-all duration-200 delay-75 ease-in-out"
          >
            <ArrowLeftOnRectangleIcon className="h-6 w-6 text-slate-100 group-hover:text-gray-200 transition-all duration-200 delay-75 ease-in-out" />
            <div>
              <h6 className="text-md font-medium text-center text-slate-100">
                Safe Payments
              </h6>
            </div>
          </div>
          <div
            className=" group shadow-xl  hover:shadow-gray-400 dark:hover:shadow-gray-900 gradient-background flex items-center justify-center
           rounded-md py-5 px-2 hover:text-gray-200 gap-3 hover:bg-opacity-60 transition-all duration-200 delay-75 ease-in-out"
          >
            <ArrowLeftOnRectangleIcon className="h-6 w-6 text-slate-100 group-hover:text-gray-200 transition-all duration-200 delay-75 ease-in-out" />
            <div>
              <h6 className="text-md font-medium text-center text-slate-100">
                Safe Payments
              </h6>
            </div>
          </div>
          <div
            className=" group shadow-xl  hover:shadow-gray-400 dark:hover:shadow-gray-900 gradient-background flex items-center justify-center
           rounded-md py-5 px-2 hover:text-gray-200 gap-3 hover:bg-opacity-60 transition-all duration-200 delay-75 ease-in-out"
          >
            <ArrowLeftOnRectangleIcon className="h-6 w-6 text-slate-100 group-hover:text-gray-200 transition-all duration-200 delay-75 ease-in-out" />
            <div>
              <h6 className="text-md font-medium text-center text-slate-100">
                Safe Payments
              </h6>
            </div>
          </div>
        </div>
      </Layout>
    </div>
  );
};

export default Features;
