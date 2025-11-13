import React from "react";
import { ListItemText } from "@mui/material";
import { useTranslation } from "react-i18next";

const ActStartPopupContent = () => {
  const { t } = useTranslation();
  return (
    <>
      <ListItemText sx={{ display: "list-item" }}>{t("act1")}</ListItemText>
      <ListItemText sx={{ display: "list-item" }}>{t("act2")}</ListItemText>
      <ListItemText sx={{ display: "list-item" }}>{t("act3")}</ListItemText>
      <ListItemText sx={{ display: "list-item" }}>{t("act4")}</ListItemText>
    </>
  );
};

export default ActStartPopupContent;
