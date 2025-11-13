import { useState } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import { Button, FormControl, MenuItem, Select } from "@mui/material";
import { useTranslation } from "react-i18next";
import "../css/common.css";
import ReactGA from "react-ga4";
import logconfig from "../config/dbconfig";
import { SendLogData } from "../config/wslog.js";
import useWebSocket, { ReadyState } from "react-use-websocket";
import Confetti from "react-confetti";
import { useWindowSize } from "react-use";

export const RestartPageMidContent = () => {
  const [pageName] = useState("Restart");
  const { sendJsonMessage } = useWebSocket(logconfig.logurl, { share: true });
  const location = useLocation();
  const { attempted } = location.state || {};
  const { t } = useTranslation();
  let navigate = useNavigate();
  const { width, height } = useWindowSize();

  return (
    <div
      className="row d-flex"
      style={{
        width: "100vw",
        backgroundColor: "#F2FBFF",
        borderRadius: "14px",
        opacity: 1,
        boxShadow: "0px 10px 5px rgba(0, 0, 0, 0.40)",
        display: "block",
        overflow: "auto",
      }}
    >
      <div className="col-sm-9 d-flex align-items-center justify-content-center">
        <div
          style={{
            height: "80vh",
            width: "95%",
            background: "#FFFFFF 0% 0% no-repeat padding-box",
            borderRadius: "13px",
            boxShadow: "0px 4px 7px #00000029",
            display: "block",
            padding: "4%",
            paddingTop: "0%",
            overflow: "auto",
            overflowX: "hidden",
            margin: "5px",
            fontSize: "calc(.6rem + .4vw)",
          }}
        >
          <div className="row flex-grow-1" style={{ height: "85%" }}>
            <div
              className="col d-flex justify-content-center align-items-center"
              style={{ height: "100%" }}
            >
              <div className="restartDiv">
                <div>
                  You have attempted: {attempted}{" "}
                  {attempted === 1 ? "sentence" : "sentences"}.
                </div>
                <div className="text-center mt-3">
                  <Button
                    variant="contained"
                    onClick={() => navigate("/")}
                    sx={{
                      background: "#0F477E",
                      color: "#ffffff",
                      fontSize: "calc(.6rem + .4vw)",
                    }}
                  >
                    {t("restart")}
                  </Button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className="col-sm-3 d-flex align-items-center justify-content-center">
        <div
          style={{
            height: "80vh",
            width: "95%",
            overflow: "auto",
            overflowX: "hidden",
            borderRadius: "13px",
            boxShadow: "0px 4px 7px #00000029",
            display: "block",
            background: "#FFFFFF 0% 0% no-repeat padding-box",
            margin: "5px",
          }}
        >
          <div
            className="sticky-top text-center"
            style={{
              background: "#002F65",
              borderRadius: "10px 10px 0px 0px",
              opacity: "1",
              color: "#FFFFFF",
              fontSize: "calc(1rem + 0.2vw)",
              fontWeight: "bolder",
            }}
          >
            {t("instr")}
          </div>
          <div
            style={{
              maxHeight: "50vh",
              padding: "2%",
              lineHeight: "30px",
              fontSize: "calc(.6rem + .4vw)",
            }}
          >
            <div>
              <ul>{t("instruction_restart")}</ul>
            </div>
          </div>
        </div>
      </div>
      <Confetti width={width} height={height} />
    </div>
  );
};
