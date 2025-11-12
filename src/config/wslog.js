import logconfig from "./dbconfig.js";
import { browserName, browserVersion } from "react-device-detect";

export const SendLogData = (
  sendJsonMessage,
  _page,
  _buttonName,
  _eventType,
  _description,
  _inputs = [],
  _popups = [],
  _hints = [],
  _results = []
) => {
  sendJsonMessage({
    clientIP: localStorage.getItem("clientip")
      ? localStorage.getItem("clientip")
      : "",
    browserName: browserName,
    browserVersion: browserVersion,
    sessionId: localStorage.getItem("sessionid"),
    userid: localStorage.getItem("userid")
      ? localStorage.getItem("userid")
      : "",
    subject: logconfig.subject,
    standard: logconfig.standard,
    activityName: logconfig.activityName,
    activityUniqueName: logconfig.activityUniqueName,
    page: _page,
    inputs: _inputs,
    buttonName: _buttonName,
    eventType: _eventType,
    popups: _popups,
    hints: _hints,
    description: _description,
    type: "userevent",
    results: _results,
  });

  console.log("sendJsonMessage is called");
};
