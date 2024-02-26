// https://www.npmjs.com/package/react-responsive-carousel
import React from "react";
import { Carousel } from "react-responsive-carousel";
import "react-responsive-carousel/lib/styles/carousel.min.css";
import img4 from "../../../images/map.png";
import img2 from "../../../images/carousel-bg-2.png";
import img1 from "../../../images/slider4.jpg";
import img3 from "../../../images/slider3.jpg";

const Slider = () => {
  const onChange = (index) => {
    // handle change event if needed
  };

  const onClickItem = (index) => {
    // handle click on item event if needed
  };

  const onClickThumb = (index) => {
    // handle click on thumb event if needed
  };

  return (
    <div className=" pt-10 pb-3">
      <Carousel
        showArrows={true}
        onChange={onChange}
        onClickItem={onClickItem}
        onClickThumb={onClickThumb}
        showIndicators
        infiniteLoop
        autoPlay
      >
        <div>
          <img className=" relative" src={img1} alt="Image 1" />
        </div>
        <div>
          <img className=" relative" src={img3} alt="Image 1" />
        </div>
        <div>
          <img src={img2} alt="Image 2" />
          <p className="legend">Legend 2</p>
        </div>

        <div>
          <img src={img4} alt="Image 6" />
          <p className="legend">Legend 6</p>
        </div>
      </Carousel>
    </div>
  );
};

export default Slider;
