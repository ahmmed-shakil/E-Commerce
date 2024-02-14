import React from "react";
import Switcher from "../../DarkModeSwitch/Switcher";
import { pages } from "../../routers";
import { NavLink, useLocation } from "react-router-dom";
import { Layout } from "./Layout/Layout";
import HeaderSearch from "./HeaderSearch";
import { ShoppingCartIcon, UserCircleIcon } from "@heroicons/react/24/solid";
import CategoriesDropDown from "./CategoriesDropDown";

const DesktopHeader = () => {
  const { pathname } = useLocation();
  return (
    <div
      className="hidden md:block sticky gradient-background dark:bg-slate-950 text-slate-100 top-0 shadow"
      style={{ zIndex: 999999999999999 }}
    >
      <Layout>
        <div className=" flex items-center gap-10">
          <div className=" flex items-center pt-1 mb-2">
            <NavLink to={"/"}>
              <p className="text-xs hover:opacity-75">Become a Seller</p>
            </NavLink>
          </div>
          <div className=" flex items-center pt-1 mb-2">
            <NavLink to={"/"}>
              <p className="text-xs hover:opacity-75">Help & Support</p>
            </NavLink>
          </div>
        </div>
      </Layout>
      <Layout>
        <div className=" grid grid-cols-header pb-5">
          <div className="flex items-center justify-evenly">
            <NavLink to={"/"}>
              <h2 className="text-2xl font-semibold">S-MART</h2>
            </NavLink>
            <div className=" ms-10">
              <CategoriesDropDown />
            </div>
            <div className="flex-1 ms-10">
              <HeaderSearch />
            </div>
          </div>
          <div className="flex items-center justify-end space-x-4">
            {/* {pages
              ?.filter((page) => page.show)
              .map((page) => {
                return (
                  <NavLink
                    to={page.path}
                    className={`nav-item ${
                      pathname === page.path && "bg-primary text-white"
                    }`}
                  >
                    {page.value}
                  </NavLink>
                );
              })} */}
            <NavLink
              to={"/login"}
              className={`nav-item flex gap-2 items-center ${
                pathname === "/login" && "bg-primary text-white"
              }`}
            >
              <UserCircleIcon width={30} height={30} />{" "}
              <p className=" text-md">Login</p>
            </NavLink>
            <NavLink
              to={"/login"}
              className={`nav-item flex gap-2 items-center ${
                pathname === "/login" && "bg-primary text-white"
              }`}
            >
              <p className=" text-md">Signup</p>
            </NavLink>
            <NavLink
              to={"/cart"}
              className={`py-2 px-3 h-10 flex gap-2 items-center relative ${
                pathname === "/login" && "bg-primary text-white"
              }`}
            >
              <ShoppingCartIcon className=" " width={30} height={30} />{" "}
              <p className=" absolute right-0" style={{ top: "-13px" }}>
                10
              </p>
            </NavLink>
            {/* <NavLink
              to={"/admin-portal"}
              className={`border-solid border-2 border-gray-800 hover:bg-gray-800 hover:text-gray-200 transition-all duration-200 ease-in-out delay-150 py-2 px-3 h-10 rounded-lg hover:border-transparent ${
                pathname === "/admin-portal" && "bg-primary text-white"
              }`}
            >
              Admin Portal
            </NavLink> */}
            <div className=" py-2 px-3 h-10">
              <Switcher />
            </div>
          </div>
        </div>
      </Layout>
    </div>
  );
};

export default DesktopHeader;
