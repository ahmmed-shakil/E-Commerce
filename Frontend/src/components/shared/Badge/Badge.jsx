import React from "react";

const Badge = ({ bg, text, content }) => {
  return (
    <div className={`${bg} ${text} text-sm py-1 px-2 rounded-md`}>
      {content}
    </div>
  );
};

export default Badge;
