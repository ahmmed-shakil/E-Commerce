import React from "react";

export const Layout = ({ children }) => {
  return (
    <div className=" container px-3 lg:px-0 mx-auto w-full lg:w-10/12">
      {children}
    </div>
  );
};
