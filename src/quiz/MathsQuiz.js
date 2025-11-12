import { Quiz } from "english-olabsnxtg-library";
import React from "react";
import Quizcomp from "./Quizcomp";
import { useTranslation } from "react-i18next";
import useWebSocket, { ReadyState } from "react-use-websocket";
import logconfig from "../config/dbconfig";
import { SendLogData } from "../config/wslog.js";

const MathsQuiz = () => {
  const { t, i18n } = useTranslation();
  const { sendJsonMessage } = useWebSocket(logconfig.logurl, { share: true });

  return (
    <div>
      <Quiz
        H_title={t("title")}
        H_sidebarvisible="hidden"
        HQ_quittext={t("aysywtq")}
        HQ_yes={t("yes")}
        HQ_cancel={t("cancel")}
        quiz_component={<Quizcomp />}
        WS_sendJsonMessage={sendJsonMessage}
        WS_SendLogData={SendLogData}
        labNo="-"
        labShortName={t("title")}
      />
    </div>
  );
};

export default MathsQuiz;
