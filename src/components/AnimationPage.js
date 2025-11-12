import React from "react";
import { TheoryPageWithLabel } from "english-olabsnxtg-library";
import QuizPopupContent from "./QuizPopupContent";
import useWebSocket, { ReadyState } from "react-use-websocket";
import logconfig from "../config/dbconfig";
import { SendLogData } from "../config/wslog.js";
import AnimationMidContent from "./AnimationMidContent.js";
import { useTranslation } from "react-i18next";

const AnimationPage = () => {
  const { t } = useTranslation();
  const { sendJsonMessage } = useWebSocket(logconfig.logurl, { share: true });
  return (
    <>
      <TheoryPageWithLabel
        H_title={t("title")}
        HQ_yes={t("yes")}
        HQ_cancel={t("cancel")}
        HQ_quittext={t("aysywtq")}
        M_midheight="90%"
        M_midcontent_comp={<AnimationMidContent />}
        M_workbenchLebel_landscape={t("animation")}
        M_workbenchLebel_portrait="Am"
        RSM_theory_tt={t("theory")}
        RSM_vivavoce_tt={t("vivavoce")}
        RSM_procedure_tt={t("procedure")}
        RSM_animation_tt={t("animation")}
        RSM_ok={t("ok")}
        RSM_Intruc_popup_title_string={t("ifq")}
        RSM_QuizPopupContent_comp={<QuizPopupContent />}
        WS_sendJsonMessage={sendJsonMessage}
        WS_SendLogData={SendLogData}
        labNo="-"
        labShortName={t("title")}
      />
    </>
  );
};

export default AnimationPage;
