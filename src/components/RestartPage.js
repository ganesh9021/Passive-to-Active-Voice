import React from "react";
import { OlabsPage } from "english-olabsnxtg-library";
import QuizPopupContent from "./QuizPopupContent.js";
import { ToastContainer } from "react-toastify";
import { useTranslation } from "react-i18next";
import useWebSocket, { ReadyState } from "react-use-websocket";
import logconfig from "../config/dbconfig.js";
import { SendLogData } from "../config/wslog.js";
import { RestartPageMidContent } from "./RestartPageMidContent.js";

const RestartPage = () => {
  const { t } = useTranslation();
  const { sendJsonMessage } = useWebSocket(logconfig.logurl, { share: true });
  return (
    <>
      <OlabsPage
        H_title={t("title")}
        HQ_yes={t("yes")}
        HQ_cancel={t("cancel")}
        HQ_quittext={t("aysywtq")}
        M_midheight="90%"
        RSM_theory_tt={t("theory")}
        RSM_vivavoce_tt={t("vivavoce")}
        RSM_procedure_tt={t("procedure")}
        RSM_animation_tt={t("animation")}
        RSM_ok={t("ok")}
        M_midcontent_comp={<RestartPageMidContent />}
        RSM_Intruc_popup_title_string={t("ifq")}
        RSM_QuizPopupContent_comp={<QuizPopupContent />}
        WS_sendJsonMessage={sendJsonMessage}
        WS_SendLogData={SendLogData}
        labNo="-"
        labShortName={t("title")}
      />
      <ToastContainer />
    </>
  );
};

export default RestartPage;
