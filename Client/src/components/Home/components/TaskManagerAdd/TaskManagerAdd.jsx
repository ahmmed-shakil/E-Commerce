import React from "react";
import { Layout } from "../../../shared/Layout/Layout";
import addImg from "../../../../images/add.png";
import ButtonSecondary from "../../../Buttons/ButtonSecondary";
import { useNavigate } from "react-router-dom";

const TaskManagerAdd = () => {
  const navigate = useNavigate();
  const navigateToTarget = () => {
    navigate("/task-manager");
  };
  return (
    <div>
      <Layout>
        <div className=" my-14 px-8 bg-primary text-slate-200 dark:bg-slate-800 rounded-md shadow-lg grid grid-cols-1 lg:grid-cols-2 items-center justify-between h-full">
          <div className=" space-y-5">
            <h5 className=" text-3xl font-semibold">Are You Ready?..</h5>
            <p>
              Embark on a journey of productivity with our React-based task
              manager. Effortlessly organize your day, boost efficiency, and
              conquer your goals—all within a seamless and intuitive interface
            </p>
            <ButtonSecondary onClick={navigateToTarget} text={"Try it Now"} />
          </div>
          <div className=" flex justify-center max-h-full">
            <img src={addImg} alt="add" className=" w-3/5 object-cover" />
          </div>
        </div>
      </Layout>
    </div>
  );
};

export default TaskManagerAdd;
