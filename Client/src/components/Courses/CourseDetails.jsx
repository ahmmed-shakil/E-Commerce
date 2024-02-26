import React from "react";
import { Layout } from "../shared/Layout/Layout";
import Line from "../shared/Line";
import courseImg from "../../images/js.jpg";

const CourseDetails = () => {
  return (
    <div className="pt-6">
      <Layout>
        <div className="mb-5">
          <img
            src={courseImg}
            alt="js"
            className="object-fill w-full rounded-md"
            style={{ height: "60vh" }}
          />
        </div>
        <div className=" space-y-6">
          <div>
            <h3 className=" text-xl lg:text-4xl">Basic Javascript</h3>
            <Line prop={"mb-10"} />
            <p>
              Welcome to our JavaScript essentials course, where we'll delve
              into the core principles of this pivotal language in modern web
              development. From DOM manipulation to dynamic functionality, this
              program aims to provide a thorough understanding of JavaScript's
              role in crafting responsive web applications. Whether you're a
              coding novice or a seasoned pro looking to sharpen your skills,
              join us to master key concepts, refine your problem-solving
              abilities, and elevate your proficiency in the dynamic landscape
              of web development. Ready to unlock the full potential of
              JavaScript? Let's dive in.
            </p>
            <div className="max-w-lg mx-auto bg-primary text-gray-200 p-3 shadow-lg rounded-md my-8 space-y-6">
              <div className="flex items-center justify-between">
                <h6 className="text-xl font-medium">Total Lessons: 15</h6>
                <h6 className="text-xl font-medium">Completed: 5</h6>
              </div>
              <div className="relative">
                <div className="bg-gray-200 w-full h-1 rounded-md"></div>
                <div
                  className="absolute top-0 bg-gray-800 h-1 rounded-md"
                  style={{ width: `${(10 / 15) * 100}%` }}
                ></div>
                <p>{parseInt((10 / 15) * 100)} %</p>
              </div>
            </div>
          </div>
          <h6 className=" text-xl font-medium">All Lessons</h6>
          <Line />
          <div className=" grid grid-cols-1 lg:grid-cols-4 gap-2">
            <div className=" bg-primary text-gray-200 rounded-md shadow-md hover:shadow-2xl hover:scale-105 transition-all delay-200 ease-in-out duration-150 flex items-center justify-center py-2 gap-3 cursor-pointer">
              <p className=" font-medium">1. What is Javascript</p>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth={1.5}
                stroke="currentColor"
                className="w-6 h-6"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M16.5 10.5V6.75a4.5 4.5 0 10-9 0v3.75m-.75 11.25h10.5a2.25 2.25 0 002.25-2.25v-6.75a2.25 2.25 0 00-2.25-2.25H6.75a2.25 2.25 0 00-2.25 2.25v6.75a2.25 2.25 0 002.25 2.25z"
                />
              </svg>
            </div>
            <div className=" bg-primary text-gray-200 rounded-md shadow-md hover:shadow-2xl hover:scale-105 transition-all delay-200 ease-in-out duration-150 flex items-center justify-center py-2 gap-3 cursor-pointer">
              <p className=" font-medium">1. What is Javascript</p>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth={1.5}
                stroke="currentColor"
                className="w-6 h-6"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M13.5 10.5V6.75a4.5 4.5 0 119 0v3.75M3.75 21.75h10.5a2.25 2.25 0 002.25-2.25v-6.75a2.25 2.25 0 00-2.25-2.25H3.75a2.25 2.25 0 00-2.25 2.25v6.75a2.25 2.25 0 002.25 2.25z"
                />
              </svg>
            </div>
            <div className=" bg-primary text-gray-200 rounded-md shadow-md hover:shadow-2xl hover:scale-105 transition-all delay-200 ease-in-out duration-150 flex items-center justify-center py-2 gap-3 cursor-pointer">
              <p className=" font-medium">1. What is Javascript</p>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth={1.5}
                stroke="currentColor"
                className="w-6 h-6"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
                />
              </svg>
            </div>
          </div>
        </div>
      </Layout>
    </div>
  );
};

export default CourseDetails;
