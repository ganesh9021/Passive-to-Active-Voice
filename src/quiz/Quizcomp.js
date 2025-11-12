import React from "react";
import { lazy } from "react";
import hindi from "../questions_Hindi.json";
import english from "../questions_English.json";
import { useSelector } from "react-redux";
import { useEffect } from "react";
import { useState } from "react";
import { ThreeDots } from "react-loader-spinner";

async function getLoad(setFlagPlay, setPlay) {
  try {
    const pathCompPlay = require.resolve("QuizOlabsNxtG");

    if (pathCompPlay !== undefined) {
      const Play = lazy(() => import("QuizOlabsNxtG"));
      setFlagPlay(true);
      setPlay(Play);
      console.log("in true ...");
      console.log(Play);
    }
  } catch (e) {
    setFlagPlay(false);
    console.log("error", e); // You might send an exception to your error tracker like AppSignal
  }
}

const updateQuizJSON = (langQuizJson) => {

    let tempQuizJson = JSON.parse(JSON.stringify(langQuizJson));

    for(let i = 0; i < langQuizJson.length; i++) {
    
        // Question has image ............
        if(langQuizJson[i].questionHasImg){
            let imagepath = "./QuizImages/" + langQuizJson[i].questionImg;
            var imgTemp = require(`${ imagepath }`);
            tempQuizJson[i].questionImg = imgTemp;
        }
        
        // Explanation has images
        if(langQuizJson[i].explanationHasImg){
            let imageExp = "./QuizImages/" + langQuizJson[i].explanationImg;
            var imgExp = require(`${ imageExp }`);
            tempQuizJson[i].explanationImg = imgExp;
        }
        
        var checkForOptions = langQuizJson[i].isOptionsHaveImages;
        
        for(let j = 0; j < checkForOptions.length; j++) {
            
            if(checkForOptions[j]){                
                if(j === 0){
                    let imageOpt = "./QuizImages/" + langQuizJson[i].optionAImg;
                    var imgOp = require(`${ imageOpt }`);
                    tempQuizJson[i].optionAImg = imgOp;                 
                }

                if(j === 1){
                    let imageOpt = "./QuizImages/" + langQuizJson[i].optionBImg;  
                    var imgOp = require(`${ imageOpt }`);
                    tempQuizJson[i].optionAImg = imgOp;                  
                }

                if(j === 2){
                    let imageOpt = "./QuizImages/" + langQuizJson[i].optionCImg; 
                    var imgOp = require(`${ imageOpt }`);
                    tempQuizJson[i].optionAImg = imgOp;                   
                }

                if(j === 3){
                    let imageOpt = "./QuizImages/" + langQuizJson[i].optionDImg;
                    var imgOp = require(`${ imageOpt }`);
                    tempQuizJson[i].optionAImg = imgOp;                    
                }              
            }
        }
    }
    
    return tempQuizJson;
}

const Quizcomp = () => {
  const [flagPlay, setFlagPlay] = useState(null);
  const [Play, setPlay] = useState();
  const [langObj, setLangObj] = useState({});

  let { firstStore } = useSelector((globalState) => globalState);
  //var langObj = { eng: english, hin: hindi };

  useEffect(() => {
    getLoad(setFlagPlay, setPlay);
    
    let quizEnglish = updateQuizJSON(english);
    var quizHindi   = updateQuizJSON(hindi);    
    setLangObj({eng: quizEnglish, hin: quizHindi})    
    
  }, []);

  return (
    <>
      {flagPlay == null ? (
        <div
          style={{
            width: "100%",
            height: "100%",
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          <ThreeDots
            height="80"
            width="80"
            radius="9"
            color="#4fa94d"
            ariaLabel="three-dots-loading"
            wrapperStyle={{}}
            wrapperClassName=""
            visible={true}
          />
        </div>
      ) : flagPlay ? (
        <Play lang={firstStore.lang} questionJson={langObj} />
      ) : (
        <h4> Please install Quiz Moduele </h4>
      )}
    </>
  );
};

export default Quizcomp;
