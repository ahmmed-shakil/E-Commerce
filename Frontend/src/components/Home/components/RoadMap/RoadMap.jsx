import React from "react";
import { Layout } from "../../../shared/Layout/Layout";
import Line from "../../../shared/Line";
import basicImg from "../../../../images/roadmap1.png";
import dataSrtuctureImg from "../../../../images/roadmap2.png";
import algoImg from "../../../../images/roadmap3.png";
import oopImg from "../../../../images/roadmap4.png";
import awsImg from "../../../../images/roadmap5.png";
import solvingImg from "../../../../images/roadmap6.png";

const RoadMap = () => {
  return (
    <div className=" pb-28">
      <Layout>
        <div>
          <h5 className=" text-3xl font-semibold">
            Cpmplete Journey to Become a Programmer
          </h5>
          <Line prop={"mb-16"} />
          <div className=" relative">
            <div className=" grid grid-cols-1 lg:grid-cols-2 lg:mx-40 space-y-6 lg:space-y-32 justify-between items-center">
              <div className=" flex items-center gap-3 lg:gap-10">
                <div className=" text-right">
                  <h6 className="text-lg font-semibold">Basic programming</h6>
                  <p>
                    We'll unravel the five essential gems: variables,
                    conditions, loops, functions, and arrays and use them in
                    real life examples
                  </p>
                </div>
                <div className="p-2 border-solid border-2 border-primary rounded-full">
                  <div className=" p-4 bg-slate-400 rounded-full">
                    <img
                      src={basicImg}
                      alt="basic-programming"
                      className="w-48"
                    />
                  </div>
                </div>
              </div>
              <div
                className=" hidden lg:flex lg:justify-center text-primary"
                style={{ marginTop: "-10px" }}
              >
                <div>
                  <h2 className=" text-5xl font-semibold">01</h2>
                </div>
              </div>
              {/* 2 */}
              <div className=" hidden lg:flex lg:justify-center">
                <div>
                  <h2 className=" text-5xl font-semibold text-primary">02</h2>
                </div>
              </div>
              <div className=" flex items-center gap-3 lg:gap-10">
                <div className="p-2 border-solid border-2 border-primary rounded-full">
                  <div className=" p-4 bg-slate-400 rounded-full">
                    <img
                      src={dataSrtuctureImg}
                      alt="basic-programming"
                      className="w-48"
                    />
                  </div>
                </div>
                <div className=" text-left">
                  <h6 className="text-lg font-semibold">Data Structures</h6>
                  <p>
                    Learn the Stack, Queue, Priority Queue, Circular Queue,
                    Linked List, W Linked List, Heap, Hash and Tree Data
                    Structures
                  </p>
                </div>
              </div>
              {/* 2 */}
              {/* 3 */}

              <div className=" flex items-center gap-3 lg:gap-10">
                <div className=" text-right">
                  <h6 className="text-lg font-semibold">Algorithms</h6>
                  <p>
                    Learn Binary search, linear search, bubble sort, merge sort,
                    quick sort algorithm, Prims, Kruskal, Diastra, dynamic
                    programming, Bellman Ford
                  </p>
                </div>
                <div className="p-2 border-solid border-2 border-primary rounded-full">
                  <div className=" p-4 bg-slate-400 rounded-full">
                    <img
                      src={algoImg}
                      alt="basic-programming"
                      className="w-48"
                    />
                  </div>
                </div>
              </div>
              <div className=" hidden lg:flex lg:justify-center">
                <div>
                  <h2 className=" text-5xl font-semibold text-primary">03</h2>
                </div>
              </div>
              {/* 3 */}
              {/* 4 */}

              <div className=" hidden lg:flex lg:justify-center">
                <div>
                  <h2 className=" text-5xl font-semibold text-primary">04</h2>
                </div>
              </div>
              <div className=" flex items-center gap-3 lg:gap-10">
                <div className="p-2 border-solid border-2 border-primary rounded-full">
                  <div className=" p-4 bg-slate-400 rounded-full">
                    <img
                      src={oopImg}
                      alt="basic-programming"
                      className="w-64"
                    />
                  </div>
                </div>
                <div className=" text-left">
                  <h6 className="text-lg font-semibold">OOP & Database</h6>
                  <p>
                    Learn the Principles of Object Oriented Programming like -
                    Inheritance, Encapsulation, Polymorphism, Design Patterns
                    and Database Design, Database Integrity, Security along with
                    various database queries
                  </p>
                </div>
              </div>
              {/* 4 */}
              {/* 5 */}

              <div className=" flex items-center gap-3 lg:gap-10">
                <div className=" text-right">
                  <h6 className="text-lg font-semibold">
                    Cloud Computing / AWS
                  </h6>
                  <p>
                    Learn the basic things of cloud computing such as cloud
                    computing key, deployment model, service model, components
                    of cloud computing, key cloud service
                  </p>
                </div>
                <div className="p-2 border-solid border-2 border-primary rounded-full">
                  <div className=" p-4 bg-slate-400 rounded-full">
                    <img
                      src={awsImg}
                      alt="basic-programming"
                      className="w-64"
                    />
                  </div>
                </div>
              </div>
              <div className=" hidden lg:flex lg:justify-center">
                <div>
                  <h2 className=" text-5xl font-semibold text-primary">05</h2>
                </div>
              </div>
              {/* 5 */}
              {/* 6 */}

              <div className=" hidden lg:flex lg:justify-center">
                <div>
                  <h2 className=" text-5xl font-semibold text-primary">06</h2>
                </div>
              </div>
              <div className=" flex items-center gap-3 lg:gap-10">
                <div className="p-2 border-solid border-2 border-primary rounded-full">
                  <div className=" p-4 bg-slate-400 rounded-full">
                    <img
                      src={solvingImg}
                      alt="basic-programming"
                      className="w-64"
                    />
                  </div>
                </div>
                <div className=" text-left">
                  <h6 className="text-lg font-semibold">Problem Solving</h6>
                  <p>
                    Solve 500-600 problems from basic programming to algorithm.
                    Besides, participate in 20 - 25 programming contests. By
                    doing this you can check your skills.
                  </p>
                </div>
              </div>
              {/* 6 */}
            </div>
          </div>
        </div>
      </Layout>
    </div>
  );
};

export default RoadMap;
