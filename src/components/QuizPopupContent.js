import React from "react";
import { ListItemText } from "@mui/material";
import { useTranslation } from "react-i18next";

const QuizPopupContent = () => {
  const { t } = useTranslation();
  return (
    <>
      {" "}
      <ListItemText sx={{ display: "list-item" }}>{t("q_instr1")}</ListItemText>
      <ListItemText sx={{ display: "list-item" }}>
        {t("q_instr2")}
      </ListItemText>{" "}
      <ListItemText sx={{ display: "list-item" }}>{t("q_instr3")}</ListItemText>{" "}
      <ListItemText sx={{ display: "list-item" }}>{t("q_instr4")}</ListItemText>{" "}
      <ListItemText sx={{ display: "list-item" }}>{t("q_instr5")}</ListItemText>{" "}
      <ListItemText sx={{ display: "list-item" }}>{t("q_instr6")}</ListItemText>{" "}
      <ListItemText sx={{ display: "list-item" }}>{t("q_instr7")}</ListItemText>{" "}
      <ListItemText sx={{ display: "list-item" }}>{t("q_instr8")}</ListItemText>{" "}
    </>
  );
};

export default QuizPopupContent;
