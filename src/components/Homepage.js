import React from "react";
import { Launchpage } from "english-olabsnxtg-library";
import ActStartPopupContent from "../components/ActStartPopupContent";
import useWebSocket, { ReadyState } from "react-use-websocket";
import logconfig from "../config/dbconfig";
import { SendLogData } from "../config/wslog.js";
import { useTranslation } from "react-i18next";

const Homepage = () => {
  const { t } = useTranslation();
  const { sendJsonMessage } = useWebSocket(logconfig.logurl, { share: true });
  const arr = [t("learningOutcome1")];

  return (
    <>
      <Launchpage
        L_title={t("title")}
        L_objective={t("obj")}
        L_act_objective={t("objective")}
        L_learning_outcome={t("lo")}
        L_array={arr}
        L_startbutton={t("start")}
        RSM_ok={t("ok")}
        WAWGTL_title_string={t("wawgtl")}
        WAWGTL_comp={<ActStartPopupContent />}
        ok={t("ok")}
        cancel={t("cancel")}
        WS_sendJsonMessage={sendJsonMessage}
        WS_SendLogData={SendLogData}
        labNo="-"
        labShortName={t("title")}
        L_Developby={t("Developed_by")}
        L_CDACMum={t("C_DAC_Mumbai")}
        L_fundedby={t("Funded_by")}
        L_ministry={t("Ministry")}
        L_govofindia={t("Government_of_India")}
      />
    </>
  );
};

export default Homepage;
