import React from "react";
import ReactPlayer from "react-player";
import video from "../HelpVideo/passive-to-active.mp4";

const AnimationMidContent = () => {
  return (
    <div className="py-3" style={{ width: "100%", paddingRight: "10px" }}>
      <ReactPlayer
        className="react-player"
        url={video}
        width="100%"
        height="100%"
        controls={true}
      />
    </div>
  );
};

export default AnimationMidContent;
