import React from "react";
import DesktopHeader from "../../shared/DesktopHeader";
import Slider from "../../shared/HeroCarousel/Carousel";
import { Layout } from "../../shared/Layout/Layout";
import Features from "./Features/Features";
import { FlashSaleContainer } from "./FlashSale/FlashSaleContainer";
import { HomeProducts } from "./HomeProducts/HomeProducts";
import { CategoryContainer } from "./Categories/CategoryContainer/CategoryContainer";

const Home = () => {
  return (
    <div>
      <DesktopHeader />
      <Layout>
        <Slider />
      </Layout>
      <div className=" space-y-20">
        <Features />
        <FlashSaleContainer />
        <CategoryContainer />
        <HomeProducts />
      </div>
      {/* <HeroSection /> */}
      {/* <Features /> */}
      {/* <Ourcourses /> */}
      {/* <TaskManagerAdd /> */}
      {/* <RoadMap /> */}
      {/* <Contact /> */}
    </div>
  );
};

export default Home;
