import React from "react";
import level1Tense from "../Img/ProcedureImages/level-1-1-tense.png";
import level2passsent from "../Img/ProcedureImages/level-2-2-passsent.png";
import level2actsent from "../Img/ProcedureImages/level-2-3-actsent.png";
import level2feedback from "../Img/ProcedureImages/level-2-4-feedback.png";
import { useTranslation } from "react-i18next";

const ProcedureMidContent = () => {
  const { t } = useTranslation();
  return (
    <div
      className="py-3"
      style={{
        overflow: "auto",
        width: "100%",
        paddingRight: "10px",
        fontSize: "calc(.6rem + .4vw)",
      }}
    >
      <div className="fw-bolder">{t("procedure")}:</div>
      <ol>
        <li>{t("proc1")}</li>
        <div className="m-2 col">
          <div style={{ position: "relative", display: "inline-block" }}>
            <img
              className="img-fluid"
              style={{ border: "1px solid black", display: "block" }}
              src={level1Tense}
              alt="logo"
            />
            <div
              className="fw-bolder text-center"
              style={{
                width: "100%",
                backgroundColor: "rgba(255, 255, 255, 0.8)",
                padding: "4px 0",
              }}
            >
              Fig. 1: Select tense
            </div>
          </div>
        </div>

        <li>{t("proc2")}</li>

        <div className="m-2 col">
          <div style={{ position: "relative", display: "inline-block" }}>
            <img
              className="img-fluid"
              style={{ border: "1px solid black", display: "block" }}
              src={level2passsent}
              alt="logo"
            />
            <div
              className="fw-bolder text-center"
              style={{
                width: "100%",
                backgroundColor: "rgba(255, 255, 255, 0.8)",
                padding: "4px 0",
              }}
            >
              Fig. 2: Sentence in Passive voice
            </div>
          </div>
        </div>

        <li>{t("proc3")}</li>

        <div className="m-2 col">
          <div style={{ position: "relative", display: "inline-block" }}>
            <img
              className="img-fluid"
              style={{ border: "1px solid black", display: "block" }}
              src={level2actsent}
              alt="logo"
            />
            <div
              className="fw-bolder text-center"
              style={{
                width: "100%",
                backgroundColor: "rgba(255, 255, 255, 0.8)",
                padding: "4px 0",
              }}
            >
              Fig. 3: Shuffeled words of sentence in active voice
            </div>
          </div>
        </div>

        <li>{t("proc5")}​</li>
        <li>{t("proc4")}</li>

        <div className="m-2 col">
          <div style={{ position: "relative", display: "inline-block" }}>
            <img
              className="img-fluid"
              style={{ border: "1px solid black", display: "block" }}
              src={level2feedback}
              alt="logo"
            />
            <div
              className="fw-bolder text-center"
              style={{
                width: "100%",
                backgroundColor: "rgba(255, 255, 255, 0.8)",
                padding: "4px 0",
              }}
            >
              Fig. 4: Feedback of constructed active voice sentence
            </div>
          </div>
        </div>

        <li>{t("proc6")}​</li>
        <li>{t("proc7")}</li>
      </ol>
    </div>
  );
};

export default ProcedureMidContent;
