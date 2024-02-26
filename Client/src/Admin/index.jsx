import React from "react";
import SidebarNav from "./components/SidebarNav/SidebarNav";

const Admin = () => {
  return (
    <div className=" min-h-screen">
      <div className=" flex justify-between">
        <div className=" w-1/5 h-full fixed bg-primary">
          <SidebarNav />
        </div>
        <div className=" w-4/5">ff</div>
      </div>
    </div>
  );
};

export default Admin;
