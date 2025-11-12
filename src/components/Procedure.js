import React from "react";
import ProcedureMidContent from "./ProcedureMidContent";
import QuizPopupContent from "../components/QuizPopupContent";
import useWebSocket, { ReadyState } from "react-use-websocket";
import logconfig from "../config/dbconfig";
import { SendLogData } from "../config/wslog.js";
import { TheoryPageWithLabel } from "english-olabsnxtg-library";
import { useTranslation } from "react-i18next";

const Procedure = () => {
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
        M_midcontent_comp={<ProcedureMidContent />}
        M_workbenchLebel_landscape={t("procedure")}
        M_workbenchLebel_portrait="Pro"
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

export default Procedure;
