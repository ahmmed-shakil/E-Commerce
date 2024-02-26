import React, { useState } from "react";
import img from "../../../../images/product.jpg";
import Line from "../../../shared/Line";
import { StarIcon } from "@heroicons/react/24/solid";

const Tabs = () => {
  const [selected, setSelected] = useState("desc");
  const renderDescription = () => {
    return (
      <div className=" pt-10">
        <p className=" text-sm">
          সারারা দিস ঘের রেডিমেট থ্রি পিস চায়না লিলেনের উপরের স্ক্রিন
          প্রিন্টকাজ করা ও গ্লাস বসানো আছে গলায় এমবোস্ট স্ক্রিন প্রিন্টের কাজ
          করা ওরনা ক্রিন প্রিন্টের কাজ করা ওড়না - ৫ হাত বহর জামা লং - ৪৮ জামার
          গের - ২০০+ পাজামা - ফ্রি সাইজ Sarara This Gher Readymade Three Piece
          China linen top has screen print work and glass mounting Embossed
          screen print work on the neck Orna screen print work Veil - 5 hands
          fleet Jama Long - 48 Jamar Ger - 200+ Pajamas - Free Size মার্কেট
          প্রাইস এর তুলনায় আমি কম দামে বিক্রি করে থাকি কারণ আমার নিজস্ব কারখানা
          আছে । বি: দ্রি: একবার নিলে আশা করি আবার নিবেন । আমরা একটি প্রসিদ্ধ
          Brand থেকে এই পণ্যগুলো sale করছি, আমরা সব সময় আমাদের প্রোডাক্টের
          গুণগতমান অক্ষুন্ন রাখতে কাজ করছি। আমরা কম খরচে ভালো কাপড় ব্যবহার করে
          কাস্টমারদের জন্য প্রোডাক্ট গুলো সরবরাহ করি এবং দক্ষ কারিগরদের দ্বারা
          পণ্যগুলো প্রস্তুত করি, তাই আমাদের প্রতিটি পণ্যর ফিনিশিং খুবই ভালো
          মানের হয়ে থাকে। আমাদের প্রতিটি পন্য ছবির সাথে মিলবে কে প্রস্তুত করা
          হয়। তাই আপনারা নির্ভরযোগ্য ভাবে অর্ডার করতে পারেন । ছবির অনুরূপ সঠিক
          প্রোডাক্টটি আপনাদের কাছে পৌঁছানো হবে। We are selling these products
          from a famous brand, we are always working to keep the quality of our
          products intact.
        </p>
      </div>
    );
  };
  const renderReviews = () => {
    return (
      <div>
        <h6 className=" mt-8">Reviews</h6>
        <div className=" my-4 border border-s-0 border-t-0 border-e-0 pb-3">
          <div className=" flex items-start justify-between mb-3">
            <div className=" flex items-center gap-3">
              <img src={img} alt="daf" className=" w-8 h-8 rounded-full" />
              <div>
                <h6 className=" font-semibold m-0 p-0">Mark Smith</h6>
                <div className="  flex gap-2 items-center">
                  <StarIcon className=" w-4 h-4" />
                  <StarIcon className=" w-4 h-4" />
                  <StarIcon className=" w-4 h-4" />
                  <StarIcon className=" w-4 h-4" />
                  <StarIcon className=" w-4 h-4" />
                </div>
              </div>
            </div>

            <p className=" text-sm m-0 p-0 pe-3">4 months ago</p>
          </div>
          <div>
            <p>
              We are selling these products from a famous brand, we are always
              working to keep the quality of our products intact.
            </p>
            <div className=" grid grid-cols-10 gap-1">
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
            </div>
          </div>
        </div>
        <div className=" my-4 border border-s-0 border-t-0 border-e-0 pb-3">
          <div className=" flex items-start justify-between mb-3">
            <div className=" flex items-center gap-3">
              <img src={img} alt="daf" className=" w-8 h-8 rounded-full" />
              <div>
                <h6 className=" font-semibold m-0 p-0">Mark Smith</h6>
                <div className="  flex gap-2 items-center">
                  <StarIcon className=" w-4 h-4" />
                  <StarIcon className=" w-4 h-4" />
                  <StarIcon className=" w-4 h-4" />
                  <StarIcon className=" w-4 h-4" />
                  <StarIcon className=" w-4 h-4" />
                </div>
              </div>
            </div>

            <p className=" text-sm m-0 p-0 pe-3">4 months ago</p>
          </div>
          <div>
            <p>
              We are selling these products from a famous brand, we are always
              working to keep the quality of our products intact.
            </p>
            <div className=" grid grid-cols-10 gap-1">
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
              <img src={img} alt="aff" className=" w-24 h-24 rounded-md" />
            </div>
          </div>
        </div>
      </div>
    );
  };
  return (
    <div
      className=" bg-slate-50 dark:bg-slate-800 px-2 py-5 rounded-md"
      style={{ minHeight: "80vh" }}
    >
      <div className=" my-2 flex items-center gap-1">
        <button
          className={`${
            selected === "desc" ? "btn-primary" : "btn-primary-outline"
          }`}
          onClick={() => setSelected("desc")}
        >
          Description
        </button>
        <button
          className={`${
            selected === "rating" ? "btn-primary" : "btn-primary-outline"
          }`}
          onClick={() => setSelected("rating")}
        >
          Ratings
        </button>
      </div>
      <div className=" w-full">
        {selected === "desc" && renderDescription()}
        {selected === "rating" && renderReviews()}
      </div>
    </div>
  );
};

export default Tabs;
