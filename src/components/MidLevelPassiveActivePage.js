import React, { useState, useEffect } from "react";
import { useNavigate, useLocation } from "react-router-dom";
import XMLParser from "react-xml-parser";

import { Button } from "@mui/material";
import Dialog from "@mui/material/Dialog";
import DialogTitle from "@mui/material/DialogTitle";
import DialogContent from "@mui/material/DialogContent";
import DialogActions from "@mui/material/DialogActions";
import DialogContentText from "@mui/material/DialogContentText";

import Box from "@mui/material/Box";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import Select, { SelectChangeEvent } from "@mui/material/Select";
import { Inflectors } from "en-inflectors";
import { ReactSortable } from "react-sortablejs";
import useMediaQuery from "@mui/material/useMediaQuery";
import { useTheme } from "@mui/material/styles";
import CloseOutlinedIcon from "@mui/icons-material/CloseOutlined";

import Table from "@mui/material/Table";

import tensejson from "../supportingfiles/DBJSON/tense.json";
import sentenceTemplate from "./sentenceTemplate";
import "../resources/Midcontent.css";
import verbjson from "../supportingfiles/DBJSON/verb.json";
import nounverbjson from "../supportingfiles/DBJSON/noun_verb.json";
import nounjson from "../supportingfiles/DBJSON/noun.json";
import passActFeedbackProps from "../supportingfiles/languageProperties/passiveActive/en-IN-feedbackproperties.json";
import { useTranslation } from "react-i18next";
import hintImg from "../Img/hint2.png";

const MidLevelPassiveActivePage = () => {
  const { t } = useTranslation();
  const [level, setLevel] = useState("Level 2");
  const navigate = useNavigate();
  const [open, setOpen] = useState(false);
  const [hintText, setHintText] = useState("Select Tense");
  const [hintTitle, setHintTitle] = useState("Instructions");
  const [tense, setTense] = React.useState("Simple Present Tense");
  const [sentTempPath, setSentTempPath] = useState("");
  const [actvityId, setActivityId] = useState(1);
  const [passActObj, setPassActObj] = useState({});
  const [actList, setActList] = useState([]);
  const [openFeedback, setOpenFeedback] = useState(false);
  const [fdbackObj, setFeedbackObj] = useState({});
  const theme = useTheme();
  const fullScreen = useMediaQuery(theme.breakpoints.down("md"));
  var tempPassActObj = {};
  const [sentCount, setSentCount] = useState(1);

  var draggableItem = {
    padding: "10px 15px",
    maxWidth: "180px",
    margin: "10px 5px",
    background: "rgb(71, 119, 214)",
    color: "white",
    borderRadius: "6px",
    cursor: "pointer",
  };

  var tempActivityPojo = {
    sentence_tense: "Simple Present Tense",
    //sentence_tense : "modalverb",
    active_voice: "",
    passive_voice: "",
    subject_name: "",
    subject_number: "",
    subject_person: "",
    subject_phonemes: "",
    subject_countable: false, // countable / uncountable DB	// column
    specific_subject: false, // specific / unspecific (general)
    subject_type: "", // common /porper DB column present
    subject_gender: "", // male female neutral DB column	// present

    object_name: "",
    object_number: "",
    object_person: "",
    object_phonemes: "",
    object_countable: false, // countable / uncountable DB	// column

    specific_object: false, // specific / unspecific (general)
    object_type: "", // common /porper DB column present
    object_gender: "", // male female neutral DB column present

    object_article: "",
    subject_article: "",

    verb_category: "",
    verb: "",

    active_helping_verb: "",
    passive_helping_verb: "",
    active_main_verb: "",
    passive_main_verb: "",

    jumbled_active_sentence: [],
    jumbled_passive_sentence: [],
    active_sentence: [],
    passive_sentence: [],
  };

  var tempPojoSent = {
    sentenceID: "",
    sentenceType: "",
    subjectType: "",
    verbCategory: "",
    infinitiveType: "",
    infinitiveTense: "",
    subverbType: "",
    objectType: "",
    subjectArticleType: "",
    objectArticleType: "",
  };

  const [TemplatePojo, setTemplatePojo] = useState({
    sentenceID: "",
    sentenceType: "",
    subjectType: "",
    verbCategory: "",
    infinitiveType: "",
    infinitiveTense: "",
    subverbType: "",
    objectType: "",
    subjectArticleType: "",
    objectArticleType: "",
  });

  const [ActivityPojo, setActivityPojo] = useState({
    sentence_tense: "Simple Present Tense",
    active_voice: "",
    passive_voice: "",
    subject_name: "",
    subject_number: "",
    subject_person: "",
    subject_phonemes: "",
    subject_countable: false, // countable / uncountable DB	// column
    specific_subject: false, // specific / unspecific (general)
    subject_type: "", // common /porper DB column present
    subject_gender: "", // male female neutral DB column	// present

    object_name: "",
    object_number: "",
    object_person: "",
    object_phonemes: "",
    object_countable: false, // countable / uncountable DB	// column

    specific_object: false, // specific / unspecific (general)
    object_type: "", // common /porper DB column present
    object_gender: "", // male female neutral DB column present

    object_article: "",
    subject_article: "",

    verb_category: "",
    verb: "",

    active_helping_verb: "",
    passive_helping_verb: "",
    active_main_verb: "",
    passive_main_verb: "",

    jumbled_active_sentence: [],
    jumbled_passive_sentence: [],
    active_sentence: [],
    passive_sentence: [],
  });

  useEffect(() => {
    var sentenceTempPath = "";
    sentenceTempPath = getSentenceTempPath();

    if (undefined !== sentenceTempPath || "" === sentenceTempPath) {
      const result = simpleSentenceParser(sentenceTempPath).then((r) => {
        var allNounVrbObj = getDetailedNounVerb(
          actvityId,
          tempPojoSent,
          tempActivityPojo
        );
        setObjectDetails(allNounVrbObj.Noun_verb_nounid, tempActivityPojo);
        setSubjectDetails();
        var listActPass = getVerbInflections();
        articleSelector();
        generateSentence(actvityId, listActPass);
        jumbled_sentence();
        var passDataObj = populateJSON(actvityId);
        process(passDataObj, actvityId);
      });
    }
  }, [actvityId]);

  async function simpleSentenceParser(xmlFileSrc) {
    // const path = "../supportingfiles" + xmlFileSrc;
    // const staticPath = require(`../supportingfiles${xmlFileSrc}`);
    // console.log(staticPath);

    try {
      // const response = await fetch(staticPath);
      // const textResponse = await response.text();

      const parser = new DOMParser();
      const xmlDoc = parser.parseFromString(sentenceTemplate, "text/xml");

      const listSentence = xmlDoc.querySelectorAll("sentence");
      const randSentId = randomNumberInRange(0, listSentence.length - 1);
      const node = listSentence[randSentId];

      const nodeId = node.getAttribute("id");
      const nodeType = node.getAttribute("type");

      const nodeSubject = node.querySelectorAll("subject");
      const nodePredicate = node.querySelectorAll("predicate");

      const nodeSubjNounType = nodeSubject[0]
        .querySelectorAll("noun")[0]
        .getAttribute("type");

      const verbNode = nodePredicate[0].querySelectorAll("verb")[0];
      const nodePredVerbCate = verbNode.getAttribute("category");

      const infNode = verbNode.querySelectorAll("infinitive")[0];
      const nodePredVerbInfitype = infNode.getAttribute("type");
      const nodePredVerbInfiTense = infNode.getAttribute("tense");

      const subverbNode = infNode.querySelectorAll("subverb")[0];
      const nodePredVerbInfiSubVerbType = subverbNode.getAttribute("type");

      const objNode = nodePredicate[0].querySelectorAll("object")[0];
      const nodePredObjNounType = objNode
        .querySelectorAll("noun")[0]
        .getAttribute("type");
      const nodePredObjArtType = objNode
        .querySelectorAll("article")[0]
        .getAttribute("type");

      const nodeSubjArtType = nodeSubject[0]
        .querySelectorAll("article")[0]
        .getAttribute("type");

      const parsedData = {
        sentenceID: nodeId,
        sentenceType: nodeType,
        subjectType: nodeSubjNounType,
        verbCategory: nodePredVerbCate,
        infinitiveType: nodePredVerbInfitype,
        infinitiveTense: nodePredVerbInfiTense,
        subverbType: nodePredVerbInfiSubVerbType,
        objectType: nodePredObjNounType,
        subjectArticleType: nodeSubjArtType,
        objectArticleType: nodePredObjArtType,
      };

      setTemplatePojo({
        ...TemplatePojo,
        ...parsedData,
      });

      tempPojoSent = {
        ...tempPojoSent,
        ...parsedData,
      };

      // Delay with setTimeout to simulate previous behavior
      return new Promise((resolve) => {
        setTimeout(() => resolve(tempPojoSent), 600);
      });
    } catch (error) {
      console.error("Error in simpleSentenceParser:", error);
      return null; // or throw error if you want the calling function to handle it
    }
  }

  const randomNumberInRange = (min, max) => {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  };

  const getDetailedNounVerb = (actvityId, tempPojo, tempActPojo) => {
    var random_noun_id = 0;
    var random_verb_id = 0;
    var verbTemplate = tempPojo.infinitiveType;
    var verbId = verbjson[verbTemplate].verb_id;
    var nounverbkeycnt = Object.keys(nounverbjson).length;
    var allNounVrbObj = [];

    for (var i = 0; i < nounverbkeycnt; i++) {
      var nounverbobj = nounverbjson[i];
      if (
        undefined !== nounverbobj &&
        verbId === nounverbobj.Noun_verb_verbid
      ) {
        allNounVrbObj.push(nounverbobj);
      }
    }

    tempActivityPojo = {
      ...tempActivityPojo,
      verb_category: verbjson[verbTemplate].verb_type,
      verb: verbjson[verbTemplate].verb_base_form,
    };

    var randSentID = randomNumberInRange(0, allNounVrbObj.length - 1);
    return allNounVrbObj[randSentID];
  };

  const getSentenceTempPath = () => {
    var sentenseTempPath = "";
    var sentenceTempId = 0;
    var sentenceTense = tempActivityPojo.sentence_tense;

    if (actvityId === 3 || actvityId === 1) {
      sentenceTempId = 1;
    }

    for (var noofsent = 0; noofsent < sentenceTemplate.length; noofsent++) {
      if (sentenceTemplate[noofsent].activity_id == sentenceTempId) {
        sentenseTempPath = sentenceTemplate[noofsent].activity_name;
        break;
      }
    }

    setSentTempPath(sentenseTempPath);
    return sentenseTempPath;
  };

  const setObjectDetails = (noun_verb_nounid, tempActPojo) => {
    var nounobj = nounjson[noun_verb_nounid];
    var object_name = nounobj.noun_name;
    var object_type = nounobj.noun_type;
    var object_number = nounobj.noun_number;
    var object_person = nounobj.noun_person;
    var object_gender = nounobj.noun_gender;
    var object_countable = nounobj.countable;
    var object_phonemes = nounobj.noun_phoneme;

    tempActivityPojo = {
      ...tempActivityPojo,
      object_name: object_name,
      object_number: object_number,
      object_person: object_person,
      object_phonemes: object_phonemes,
      object_countable: object_countable, // countable / uncountable DB
      object_type: object_type, // common /porper DB column present
      object_gender: object_gender, // male female neutral DB column present
    };
  };

  const setSubjectDetails = () => {
    var subKeycnt = Object.keys(nounjson).length;
    var allSubDet = [];

    for (var i = 0; i < subKeycnt; i++) {
      var nounsubjobj = nounjson[i];
      if (undefined !== nounsubjobj && "person" === nounsubjobj.noun_case) {
        allSubDet.push(nounsubjobj);
      }
    }

    var randSentID = randomNumberInRange(0, allSubDet.length - 1);
    var subdet = allSubDet[randSentID];
    var subject_name = subdet.noun_name;
    var subject_type = subdet.noun_type;
    var subject_number = subdet.noun_number;
    var subject_person = subdet.noun_person;
    var subject_gender = subdet.noun_gender;
    var subject_countable = subdet.countable;
    var subject_phoneme = subdet.noun_phoneme;

    tempActivityPojo = {
      ...tempActivityPojo,
      subject_name: subject_name,
      subject_number: subject_number,
      subject_person: subject_person,
      subject_phoneme: subject_phoneme,
      subject_countable: subject_countable,
      subject_type: subject_type,
      subject_gender: subject_gender,
    };
  };

  const getVerbInflections = () => {
    var listTense = [];

    switch (tempActivityPojo.sentence_tense) {
      case "Simple Present Tense":
        listTense = simplepresent();
        break;
      case "Present Continuous Tense":
        listTense = continuouspresent();
        break;
      case "Present Perfect Tense":
        listTense = perfectpresent();
        break;
      case "Simple Past Tense":
        listTense = simplepast();
        break;
      case "Past Continuous Tense":
        listTense = continuouspast();
        break;
      case "Past Perfect Tense":
        listTense = perfectpast();
        break;
      case "Simple Future Tense":
        listTense = simplefuture();
        break;
      case "Future Perfect Tense":
        listTense = perfectfuture();
        break;
      case "modalverb":
        listTense = modalverb();
        break;
    }
    return listTense;
  };

  /**
   * Conjugate main verb and select helping verb  as per the tense i.e. Simple Present Tense.
   * @return Returns Active voice verbs and Passive voice sentence verbs at index 0 and 1 respectively
   */
  const simplepresent = () => {
    var category = tempActivityPojo.verb_category;
    var subject_number = tempActivityPojo.subject_number;
    var object_number = tempActivityPojo.object_number;
    var subject_person = tempActivityPojo.subject_person;
    var sverb = null;
    var verb = tempActivityPojo.verb;
    var activeverb = null;
    var passiveverb = null;
    var actpassverb = [];

    if (
      "regular" === category.toLowerCase() ||
      "irregular" === category.toLowerCase()
    ) {
      var verbstr = verb.substring(verb.length - 1, verb.length);

      if (
        "s" === verbstr.toLowerCase() ||
        ("singular" === subject_number.toLowerCase() &&
          "third" === subject_person.toLowerCase() &&
          "h" === verbstr.toLowerCase())
      ) {
        activeverb = verb.concat("es");
      } else {
        activeverb = verb.concat("s");
      }
      tempActivityPojo.active_main_verb = activeverb;
    }

    if ("regular" === category.toLowerCase()) {
      if ("singular" === object_number.toLowerCase()) {
        sverb = "is";
      } else if ("plural" === object_number.toLowerCase()) {
        sverb = "are";
      }

      tempActivityPojo.passive_helping_verb = sverb;
      var verbstr = verb.substring(verb.length - 1, verb.length);

      if ("e" === verbstr.toLowerCase()) {
        tempActivityPojo.passive_main_verb = verb.concat("d");
      } else {
        tempActivityPojo.passive_main_verb = verb.concat("ed");
      }
      passiveverb =
        tempActivityPojo.passive_helping_verb +
        " " +
        tempActivityPojo.passive_main_verb;
    }

    if ("irregular" === category.toLowerCase()) {
      var verbobj = verbjson[verb];
      var past_participle_verb = verbobj.verb_past_participle;

      if ("singular" === object_number.toLowerCase()) {
        sverb = "is";
      } else if ("plural" === object_number.toLowerCase()) {
        sverb = "are";
      }
      tempActivityPojo.passive_helping_verb = sverb;
      tempActivityPojo.passive_main_verb = past_participle_verb;
      passiveverb =
        tempActivityPojo.passive_helping_verb +
        " " +
        tempActivityPojo.passive_main_verb;
    }

    actpassverb.push(activeverb);
    actpassverb.push(passiveverb);
    return actpassverb;
  };

  /**
   * Conjugate main verb and select helping verb  as per the tense i.e. Present Continuous Tense.
   * @return Returns Active voice sentence verbs and Passive voice sentence verbs at index 0 and 1 respectively
   */
  const continuouspresent = () => {
    var category = tempActivityPojo.verb_category;
    var subject_number = tempActivityPojo.subject_number;
    var object_number = tempActivityPojo.object_number;
    var subject_person = tempActivityPojo.subject_person;
    var verb = tempActivityPojo.verb;
    var sverb = null;
    var activeverb = null;
    var passiveverb = null;
    var actpassverb = [];

    // active form
    if (
      "regular" === category.toLowerCase() ||
      "irregular" === category.toLowerCase()
    ) {
      var verbIngForm = new Inflectors(verb).conjugate("VBG"); //var ingrule = ingrules(verb);
      tempActivityPojo.active_main_verb = verbIngForm;

      if (
        "first" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "singular" === subject_number.toLowerCase())
      ) {
        sverb = "is";
      }

      if (
        "second" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "plural" === subject_number.toLowerCase())
      ) {
        sverb = "are";
      }

      tempActivityPojo.active_helping_verb = sverb;
      activeverb =
        tempActivityPojo.active_helping_verb +
        " " +
        tempActivityPojo.active_main_verb;
    } // active form

    // passive form
    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);

      if (
        "first" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "singular" === object_number.toLowerCase())
      ) {
        sverb = "is being";
      }

      if (
        "second" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "plural" === object_number.toLowerCase())
      ) {
        sverb = "are being";
      }

      if ("e" === verbstr.toLowerCase()) {
        tempActivityPojo.passive_main_verb = verb.concat("d");
      } else {
        tempActivityPojo.passive_main_verb = verb.concat("ed");
      }

      tempActivityPojo.passive_helping_verb = sverb;
      passiveverb =
        tempActivityPojo.passive_helping_verb +
        " " +
        tempActivityPojo.passive_main_verb; // passive regular
    }

    if ("irregular" === category.toLowerCase()) {
      if (
        "first" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "singular" === object_number.toLowerCase())
      )
        sverb = "is being";

      if (
        "second" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "plural" === object_number.toLowerCase())
      )
        sverb = "are being";

      var verbobj = verbjson[verb];
      var past_participle_verb = verbobj.verb_past_participle; //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";

      tempActivityPojo.passive_helping_verb = sverb;
      tempActivityPojo.passive_main_verb = past_participle_verb;
      passiveverb =
        tempActivityPojo.passive_helping_verb +
        " " +
        tempActivityPojo.passive_main_verb;
    }

    actpassverb.push(activeverb);
    actpassverb.push(passiveverb);
    return actpassverb;
  };

  /**
   * Conjugate main verb and select helping verb  as per the tense i.e. Present Perfect Tense.
   * @return Returns Active voice sentence verbs and Passive voice sentence verbs at index 0 and 1 respectively
   */
  const perfectpresent = () => {
    var category = tempActivityPojo.verb_category;
    var subject_number = tempActivityPojo.subject_number;
    var object_number = tempActivityPojo.object_number;
    var subject_person = tempActivityPojo.subject_person;
    var verb = tempActivityPojo.verb;
    var sverb = null;
    var activeverb = null;
    var passiveverb = null;
    var actpassverb = [];

    if ("third" === subject_person.toLowerCase()) sverb = "has";
    else sverb = "have";

    tempActivityPojo.active_helping_verb = sverb;

    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);
      if ("e" === verbstr.toLowerCase()) {
        activeverb = verb.concat("d");
      } else {
        activeverb = verb.concat("ed");
      }
      tempActivityPojo.active_main_verb = activeverb;
    } // active regular

    if ("irregular" === category.toLowerCase()) {
      var verbobj = verbjson[verb];
      var past_participle_verb = verbobj.verb_past_participle; //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.active_main_verb = past_participle_verb;
    }

    activeverb =
      tempActivityPojo.active_helping_verb +
      " " +
      tempActivityPojo.active_main_verb;

    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);
      if ("third" === subject_person.toLowerCase()) sverb = "has been";
      else sverb = "have been";

      if ("e" === verbstr.toLowerCase())
        tempActivityPojo.passive_main_verb = verb.concat("d");
      else tempActivityPojo.passive_main_verb = verb.concat("ed");

      tempActivityPojo.passive_helping_verb = sverb;
    } // passsiuve regular

    // passive form
    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);

      if ("third" === subject_person.toLowerCase()) sverb = "has been";
      else sverb = "have been";

      tempActivityPojo.passive_helping_verb = sverb;

      if ("e" === verbstr.toLoweCase())
        tempActivityPojo.passive_main_verb = verb.concat("d");
      else tempActivityPojo.passive_main_verb = verb.concat("ed");
    }

    if ("irregular" === category.toLowerCase()) {
      if ("third" === subject_person.toLowerCase()) sverb = "has been";
      else sverb = "have been";

      tempActivityPojo.passive_helping_verb = sverb;

      var verbobj = verbjson[verb];
      var past_participle_verb = verbobj.verb_past_participle; //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.passive_main_verb = past_participle_verb;
    }

    passiveverb =
      tempActivityPojo.passive_helping_verb +
      " " +
      tempActivityPojo.passive_main_verb;
    actpassverb.push(activeverb);
    actpassverb.push(passiveverb);
    return actpassverb;
  };

  /**
   * Conjugate main verb and select helping verb  as per the tense i.e. Simple Past Tense.
   * @return Returns Active voice sentence verbs and Passive voice sentence verbs at index 0 and 1 respectively
   */
  const simplepast = () => {
    var sentencetense = tempActivityPojo.sentence_tense;
    var category = tempActivityPojo.verb_category;
    var subject_number = tempActivityPojo.subject_number;
    var subject_person = tempActivityPojo.subject_person;
    var verb = tempActivityPojo.verb;
    var object_number = tempActivityPojo.object_number;
    var sverb = null;
    var activeverb = null;
    var passiveverb = null;
    var actpassverb = [];

    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);
      if ("e" === verbstr.toLowerCase()) activeverb = verb.concat("d");
      else activeverb = verb.concat("ed");
      tempActivityPojo.active_main_verb = activeverb;
    } // active regular

    if ("irregular" === category.toLowerCase()) {
      var verbobj = verbjson[verb];
      var past_participle_verb = verbobj.verb_past_tense; //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.active_main_verb = past_participle_verb;
      tempActivityPojo.active_helping_verb = sverb;
    } // active irregular

    if (sverb != null)
      activeverb =
        tempActivityPojo.active_helping_verb +
        " " +
        tempActivityPojo.active_main_verb;
    else activeverb = tempActivityPojo.active_main_verb;

    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);

      if ("singular" === object_number.toLowerCase()) sverb = "was";
      else if ("plural" === object_number.toLowerCase()) sverb = "were";

      if ("e" === verbstr.toLowerCase())
        tempActivityPojo.passive_main_verb = verb.concat("d");
      else tempActivityPojo.passive_main_verb = verb.concat("ed");

      tempActivityPojo.passive_helping_verb = sverb;
    } // passive regular

    if ("irregular" === category.toLowerCase()) {
      if ("singular" === object_number.toLowerCase()) sverb = "was";
      else if ("plural" === object_number.toLowerCase()) sverb = "were";

      tempActivityPojo.passive_helping_verb = sverb;

      var verbobj = verbjson[verb];
      var past_participle_verb = verbobj.verb_past_participle; //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.passive_main_verb = past_participle_verb;
    } // passivce irregular

    passiveverb =
      tempActivityPojo.passive_helping_verb +
      " " +
      tempActivityPojo.passive_main_verb;
    actpassverb.push(activeverb);
    actpassverb.push(passiveverb);
    return actpassverb;
  }; // passive form

  /**
   * Conjugate main verb and select helping verb  as per the tense i.e. Past Continuous Tense.
   * @return Returns Active voice sentence verbs and Passive voice sentence verbs at index 0 and 1 respectively
   */
  const continuouspast = () => {
    // active form
    var category = tempActivityPojo.verb_category;
    var subject_number = tempActivityPojo.subject_number;
    var subject_person = tempActivityPojo.subject_person;
    var verb = tempActivityPojo.verb;
    var object_number = tempActivityPojo.object_number;
    var sverb = null;
    var activeverb = null;
    var passiveverb = null;
    var actpassverb = [];

    if (
      "regular" === category.toLowerCase() ||
      "irregular" === category.toLowerCase()
    ) {
      var averb = new Inflectors(verb).conjugate("VBG"); //var ingrule = ingrules(verb);
      tempActivityPojo.active_main_verb = averb;

      if (
        "first" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "singular" === subject_number.toLowerCase())
      )
        sverb = "was";

      if (
        "second" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "plural" === subject_number.toLowerCase())
      )
        sverb = "were";

      tempActivityPojo.active_helping_verb = sverb;
      tempActivityPojo.active_main_verb = averb;
      activeverb =
        tempActivityPojo.active_helping_verb +
        " " +
        tempActivityPojo.active_main_verb;
    } // active

    // passive form
    if ("regular" === category.toLowerCase()) {
      if (
        "first" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "singular" === object_number.toLowerCase())
      )
        sverb = "was being";
      if (
        "second" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "plural" === object_number.toLowerCase())
      )
        sverb = "were being";

      var verbstr = verb.substring(verb.length - 1, verb.length);

      if ("e" === verbstr.toLowerCase())
        tempActivityPojo.passive_main_verb = verb.concat("d");
      else tempActivityPojo.passive_main_verb = verb.concat("ed");
    } // passive regular

    if ("irregular" === category.toLowerCase()) {
      if (
        "first" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "singular" === object_number.toLowerCase())
      )
        sverb = "was being";
      if (
        "second" === subject_person.toLowerCase() ||
        ("third" === subject_person.toLowerCase() &&
          "plural" === object_number.toLowerCase())
      )
        sverb = "were being";

      var verbobj = verbjson[verb];
      var past_participle_verb = verbobj.verb_past_participle; //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.passive_main_verb = past_participle_verb;
    }

    tempActivityPojo.passive_helping_verb = sverb;
    passiveverb =
      tempActivityPojo.passive_helping_verb +
      " " +
      tempActivityPojo.passive_main_verb;
    actpassverb.push(activeverb);
    actpassverb.push(passiveverb);
    return actpassverb;
  };

  /**
   * Conjugate main verb and select helping verb  as per the tense i.e. Past Perfect Tense.
   * @return Returns Active voice sentence verbs and Passive voice sentence verbs at index 0 and 1 respectively
   */
  const perfectpast = () => {
    var category = tempActivityPojo.verb_category;
    var subject_number = tempActivityPojo.subject_number;
    var subject_person = tempActivityPojo.subject_person;
    var verb = tempActivityPojo.verb;
    var object_number = tempActivityPojo.object_number;
    var sverb = "had";
    var activeverb = null;
    var passiveverb = null;
    var actpassverb = [];

    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);
      if ("e" === verbstr.toLowerCase())
        tempActivityPojo.active_main_verb = verb.concat("d");
      else tempActivityPojo.active_main_verb = verb.concat("ed");
    } // active regular

    if ("irregular" === category.toLowerCase()) {
      var verbobj = verbjson[verb];
      var past_participle_verb = null;
      var past_participle_verb = verbobj.verb_past_participle; //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.active_main_verb = past_participle_verb;
    }

    tempActivityPojo.active_helping_verb = sverb;
    activeverb =
      tempActivityPojo.active_helping_verb +
      " " +
      tempActivityPojo.active_main_verb;

    // passive form
    sverb = "had been";

    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);
      if ("e" === verbstr.toLowerCase())
        tempActivityPojo.passive_main_verb = verb.concat("d");
      else tempActivityPojo.passive_main_verb = verb.concat("ed");
    } // passive regular

    if ("irregular" === category.toLowerCase()) {
      var verbobj = verbjson[verb];
      var past_participle_verb = null;
      var past_participle_verb = verbobj.verb_past_participle; //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.passive_main_verb = past_participle_verb;
    }

    tempActivityPojo.passive_helping_verb = sverb;
    passiveverb =
      tempActivityPojo.passive_helping_verb +
      " " +
      tempActivityPojo.passive_main_verb;
    actpassverb.push(activeverb);
    actpassverb.push(passiveverb);
    return actpassverb;
  };

  /**
   * Conjugate main verb and select helping verb  as per the tense i.e. Simple Future Tense.
   * @return Returns Active voice sentence verbs and Passive voice sentence verbs at index 0 and 1 respectively
   */
  const simplefuture = () => {
    var category = tempActivityPojo.verb_category;
    var subject_number = tempActivityPojo.subject_number;
    var subject_person = tempActivityPojo.subject_person;
    var verb = tempActivityPojo.verb;
    var object_number = tempActivityPojo.object_number;
    var sverb = "will";
    var activeverb = null;
    var passiveverb = null;
    var actpassverb = [];

    if (
      "regular" === category.toLowerCase() ||
      "irregular" === category.toLowerCase()
    ) {
      tempActivityPojo.active_helping_verb = sverb;
      tempActivityPojo.active_main_verb = verb;
      activeverb =
        tempActivityPojo.active_helping_verb +
        " " +
        tempActivityPojo.active_main_verb;
    } // active form

    // passive form
    sverb = "will be";

    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);
      if ("e" === verbstr.toLowerCase())
        tempActivityPojo.passive_main_verb = verb.concat("d");
      else tempActivityPojo.passive_main_verb = verb.concat("ed");
    } // passive regular

    if ("irregular" === category.toLowerCase()) {
      var verbobj = verbjson[verb];
      var past_participle_verb = null;
      var past_participle_verb = verbobj.verb_past_participle; //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.passive_main_verb = past_participle_verb;
    } // passive irregular

    tempActivityPojo.passive_helping_verb = sverb;
    passiveverb =
      tempActivityPojo.passive_helping_verb +
      " " +
      tempActivityPojo.passive_main_verb;
    actpassverb.push(activeverb);
    actpassverb.push(passiveverb);
    return actpassverb;
  };

  /**
   * Conjugate main verb and select helping verb  as per the tense i.e. Future Perfect Tense.
   * @return Returns Active voice sentence verbs and Passive voice sentence verbs at index 0 and 1 respectively
   */
  const perfectfuture = () => {
    var category = tempActivityPojo.verb_category;
    var subject_number = tempActivityPojo.subject_number;
    var subject_person = tempActivityPojo.subject_person;
    var verb = tempActivityPojo.verb;
    var object_number = tempActivityPojo.object_number;
    var sverb = "will have";
    var activeverb = null;
    var passiveverb = null;
    var actpassverb = [];

    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);
      if ("e" === verbstr.toLowerCase())
        tempActivityPojo.active_main_verb = verb.concat("d");
      else tempActivityPojo.active_main_verb = verb.concat("ed");
    } // active regular

    if ("irregular" === category.toLowerCase()) {
      var verbobj = verbjson[verb];
      var past_participle_verb = null;
      var past_participle_verb = verbobj.verb_past_participle;
      //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.active_main_verb = past_participle_verb;
    }

    tempActivityPojo.active_helping_verb = sverb;
    activeverb =
      tempActivityPojo.active_helping_verb +
      " " +
      tempActivityPojo.active_main_verb;

    // passive form
    sverb = "will have been";

    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);
      if ("e" === verbstr.toLowerCase())
        tempActivityPojo.passive_main_verb = verb.concat("d");
      else tempActivityPojo.passive_main_verb = verb.concat("ed");
    }

    if ("irregular" === category.toLowerCase()) {
      var verbobj = verbjson[verb];
      var past_participle_verb = null;
      var past_participle_verb = verbobj.verb_past_participle;
      //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.passive_main_verb = past_participle_verb;
    }

    tempActivityPojo.passive_helping_verb = sverb;
    passiveverb =
      tempActivityPojo.passive_helping_verb +
      " " +
      tempActivityPojo.passive_main_verb;
    actpassverb.push(activeverb);
    actpassverb.push(passiveverb);
    return actpassverb; // passive
  };

  /**
   * Conjugate Model verb.
   * @return Returns array Active voice sentence verbs and Passive voice sentence verbs at index 0 and 1 respectively
   */
  const modalverb = () => {
    var obj = null;
    var category = tempActivityPojo.verb_category;
    var subject_number = tempActivityPojo.subject_number;
    var subject_person = tempActivityPojo.subject_person;
    var verb = tempActivityPojo.verb;
    var object_number = tempActivityPojo.object_number;
    var sverb = null;
    var activeverb = null;
    var passiveverb = null;
    var actpassverb = [];

    // active form
    if (
      "regular" === category.toLowerCase() ||
      "irregular" === category.toLowerCase()
    ) {
      if ("go" === verb.toLowerCase()) {
        obj = "to" + " " + obj;
      } else {
        obj = obj;
      }
      activeverb = sverb + " " + verb;
    }

    // passive form
    if ("regular" === category.toLowerCase()) {
      var verbstr = verb.substring(verb.length - 1, verb.length);
      if ("e" === verbstr.toLowerCase())
        passiveverb = sverb + " " + "be" + " " + verb.concat("d");
      else passiveverb = sverb + " " + "be" + " " + verb.concat("ed");
    }

    if ("irregular" === category.toLowerCase()) {
      var verbobj = verbjson[verb];
      var past_participle_verb = null;
      var past_participle_verb = verbobj.verb_past_participle;
      //pastparticiple_word = "SELECT verb_past_participle from verb WHERE verb_base_form=?";
      tempActivityPojo.passive_main_verb = past_participle_verb;
      passiveverb = sverb + " " + past_participle_verb;
    }

    actpassverb.push(activeverb);
    actpassverb.push(passiveverb);
    actpassverb.push(obj);
    return actpassverb; // passive
  };

  const articleSelector = () => {
    /* Nouns - singular a/ an //handled plural nothing - countable a/an
     * Uncountable nothing - can go with adjective or an adverb-adjective combination before the noun
     */
    articleForSubject();
    articleForObject();
  };

  /** Generate article for the Object in the sentences using grammar rules. This article is set to Activity_Pojo. */
  const articleForObject = () => {
    var articleList = [];
    var nounNumber = tempActivityPojo.object_number;
    var countable = tempActivityPojo.object_countable;
    var specificNoun = false;
    var nounType = tempActivityPojo.object_type;
    var nounPhoneme = tempActivityPojo.object_phonemes;

    if ("common" === nounType.toLowerCase()) {
      if (!specificNoun) {
        if (countable) {
          if ("singular" === nounNumber.toLowerCase()) {
            if ("consonant" === nounPhoneme.toLowerCase()) {
              articleList.push("a");
              articleList.push("the");
            } else if ("vowel" === nounPhoneme.toLowerCase()) {
              articleList.push("an");
              articleList.push("the");
            }
          }
        } else if (!countable) {
          if ("singular" === nounNumber.toLowerCase()) {
            articleList.push("");
          }
        }
      } else if (specificNoun) {
        articleList.push("the");
      }
    } else if ("proper" === nounType.toLowerCase()) {
      if ("singular" == nounNumber.toLowerCase()) {
        if ("consonant" === nounPhoneme.toLowerCase()) {
          articleList.push("");
        } else if ("vowel" === nounPhoneme.toLowerCase()) {
          articleList.push("");
        }
      } else if ("plural" == nounNumber.toLowerCase()) {
        articleList.push("the");
      }
    }

    var randArtID = randomNumberInRange(0, articleList.length - 1);
    var article = articleList[randArtID];

    if (undefined === article) {
      article = "";
    }
    tempActivityPojo.object_article = article;
  };

  const articleForSubject = () => {
    var articleList = [];
    var nounNumber = tempActivityPojo.subject_number;
    var countable = tempActivityPojo.subject_countable;
    var specificNoun = false;
    var nounType = tempActivityPojo.subject_type;
    var nounPhoneme = tempActivityPojo.subject_phonemes;

    if ("common" === nounType.toLowerCase()) {
      if (!specificNoun) {
        if (countable) {
          if ("singular" === nounNumber) {
            if ("consonant" === nounPhoneme.toLowerCase()) {
              articleList.push("a");
              articleList.push("the");
            } else if ("vowel" === nounPhoneme.toLowerCase()) {
              articleList.push("an");
              articleList.push("the");
            }
          } else if ("plural" === nounNumber.toLowerCase()) {
            articleList.push("");
          }
        } else if (!countable) {
          if ("singular".nounNumber.toLowerCase()) {
            articleList.push("");
          }
        }
      } else if (specificNoun) {
        articleList.push("the");
      }
    } else if ("proper" === nounType.toLowerCase()) {
      if ("singular" === nounNumber.toLowerCase()) {
        if ("consonant" === nounPhoneme.toLowerCase()) {
          articleList.push("");
        } else if ("vowel" === nounPhoneme.toLowerCase()) {
          articleList.push("");
        }
      } else if ("plural" === nounNumber.toLowerCase()) {
        articleList.push("the");
      }
    }

    var randArtID = randomNumberInRange(0, articleList.length - 1);
    var article = articleList[randArtID];

    if (undefined === article) {
      article = "";
    }
    tempActivityPojo.subject_article = article;
  };

  /**
   * Generate sentence according to the exercise id.
   * Set Active voice and Passive voice sentence to the {@link Activity_Pojo}.
   * @param exerciseID exercise id to generate senetence according to
   * @param verbList (helping verb + main verb)
   */
  const generateSentence = (exerciseID, verbList) => {
    var active_voice = null;
    var passive_voice = null;
    var subject_name = tempActivityPojo.subject_name;
    var object_name = tempActivityPojo.object_name;

    if (exerciseID == 3) {
      if (
        ("" === tempActivityPojo.object_article ||
          null === tempActivityPojo.object_article) &&
        ("" === tempActivityPojo.subject_article ||
          null === tempActivityPojo.subject_article)
      ) {
        active_voice =
          subject_name.substring(0, 1).toUpperCase() +
          subject_name.substring(1) +
          " " +
          verbList[0] +
          " " +
          object_name;
      } else if (
        "" === tempActivityPojo.object_article ||
        null === tempActivityPojo.object_article
      ) {
        active_voice =
          tempActivityPojo.subject_article.substring(0, 1).toUpperCase() +
          tempActivityPojo.subject_article.substring(1) +
          " " +
          subject_name +
          " " +
          verbList[0] +
          " " +
          object_name;
      } else if (
        "" === tempActivityPojo.subject_article ||
        null === tempActivityPojo.subject_article
      ) {
        active_voice =
          subject_name.substring(0, 1).toUpperCase() +
          subject_name.substring(1) +
          " " +
          verbList[0] +
          " " +
          tempActivityPojo.object_article +
          " " +
          object_name;
      } else {
        active_voice =
          tempActivityPojo.subject_article.substring(0, 1).toUpperCase() +
          tempActivityPojo.subject_article.substring(1) +
          " " +
          subject_name +
          " " +
          verbList[0] +
          " " +
          tempActivityPojo.object_article +
          " " +
          object_name;
      }

      tempActivityPojo.active_voice = active_voice;

      if (
        ("" === tempActivityPojo.object_article ||
          null === tempActivityPojo.object_article) &&
        ("" === tempActivityPojo.subject_article ||
          null === tempActivityPojo.subject_article)
      ) {
        passive_voice =
          object_name.substring(0, 1).toUpperCase() +
          object_name.substring(1) +
          " " +
          verbList[1] +
          " by " +
          subject_name;
      } else if (
        "" === tempActivityPojo.subject_article ||
        null === tempActivityPojo.subject_article
      ) {
        passive_voice =
          tempActivityPojo.object_article +
          " " +
          object_name +
          " " +
          verbList[1] +
          " by " +
          subject_name;
      } else if (
        "" === tempActivityPojo.object_article ||
        null === tempActivityPojo.object_article
      ) {
        passive_voice =
          object_name.substring(0, 1).toUpperCase() +
          object_name.substring(1) +
          " " +
          verbList[1] +
          " by " +
          tempActivityPojo.subject_article +
          " " +
          subject_name;
      } else {
        passive_voice =
          tempActivityPojo.object_article +
          " " +
          object_name +
          " " +
          verbList[1] +
          " by " +
          tempActivityPojo.subject_article +
          " " +
          subject_name;
      }
      tempActivityPojo.passive_voice = passive_voice;
    }

    if (exerciseID == 1) {
      if (
        ("" === tempActivityPojo.object_article ||
          null === tempActivityPojo.object_article) &&
        ("" === tempActivityPojo.subject_article ||
          null === tempActivityPojo.subject_article)
      ) {
        active_voice =
          subject_name.substring(0, 1).toUpperCase() +
          subject_name.substring(1) +
          " " +
          verbList[0] +
          " " +
          object_name;
      } else if (
        "" === tempActivityPojo.object_article ||
        null === tempActivityPojo.object_article
      ) {
        active_voice =
          tempActivityPojo.subject_article +
          " " +
          subject_name +
          " " +
          verbList[0] +
          " " +
          object_name;
      } else if (
        "" === tempActivityPojo.subject_article ||
        null === tempActivityPojo.subject_article
      ) {
        active_voice =
          subject_name.substring(0, 1).toUpperCase() +
          subject_name.substring(1) +
          " " +
          verbList[0] +
          " " +
          tempActivityPojo.object_article +
          " " +
          object_name;
      } else {
        active_voice =
          tempActivityPojo.subject_article +
          " " +
          subject_name +
          " " +
          verbList[0] +
          " " +
          tempActivityPojo.object_article +
          " " +
          object_name;
      }
      tempActivityPojo.active_voice = active_voice;

      if (
        ("" === tempActivityPojo.object_article ||
          null === tempActivityPojo.object_article) &&
        ("" === tempActivityPojo.subject_article ||
          null === tempActivityPojo.subject_article)
      ) {
        passive_voice =
          object_name.substring(0, 1).toUpperCase() +
          object_name.substring(1) +
          " " +
          verbList[1] +
          " by " +
          subject_name;
      } else if (
        "" === tempActivityPojo.subject_article ||
        null === tempActivityPojo.subject_article
      ) {
        passive_voice =
          tempActivityPojo.object_article.substring(0, 1).toUpperCase() +
          tempActivityPojo.object_article.substring(1) +
          " " +
          object_name +
          " " +
          verbList[1] +
          " by " +
          subject_name;
      } else if (
        "" === tempActivityPojo.object_article ||
        null === tempActivityPojo.object_article
      ) {
        passive_voice =
          object_name.substring(0, 1).toUpperCase() +
          object_name.substring(1) +
          " " +
          verbList[1] +
          " by " +
          tempActivityPojo.subject_article +
          " " +
          subject_name;
      } else {
        passive_voice =
          tempActivityPojo.object_article.substring(0, 1).toUpperCase() +
          tempActivityPojo.object_article.substring(1) +
          " " +
          object_name +
          " " +
          verbList[1] +
          " by " +
          tempActivityPojo.subject_article +
          " " +
          subject_name;
      }
      tempActivityPojo.passive_voice = passive_voice;
    }
  };

  const jumbled_sentence = () => {
    var active_sentence = tempActivityPojo.active_voice.split(" ");
    tempActivityPojo.active_sentence = active_sentence;
    var passive_sentence = tempActivityPojo.passive_voice.split(" ");
    tempActivityPojo.passive_sentence = passive_sentence;
    tempActivityPojo.jumbled_active_sentence = shuffleArray(active_sentence);
    tempActivityPojo.jumbled_passive_sentence = shuffleArray(passive_sentence);
  };

  const populateJSON = (exercise_id) => {
    var jsonObject = {};
    jsonObject["tense"] = tempActivityPojo.sentence_tense;

    if (exercise_id === 3) {
      jsonObject["active_voice_array"] = tempActivityPojo.active_sentence;
      jsonObject["jumbled_passive_sentence_array"] =
        tempActivityPojo.jumbled_passive_sentence;
      setActList(jsonObject["jumbled_passive_sentence_array"]);
      console.log(tempActivityPojo.jumbled_active_sentence);
    }

    if (exercise_id === 1) {
      jsonObject["passive_voice_array"] = tempActivityPojo.passive_sentence;
      let newArrayEle = tempActivityPojo.jumbled_active_sentence.map((item) =>
        item.toLowerCase()
      );
      // jsonObject["jumbled_active_sentence_array"] =
      //   tempActivityPojo.jumbled_active_sentence;
      jsonObject["jumbled_active_sentence_array"] = newArrayEle;
      setActList(jsonObject["jumbled_active_sentence_array"]);
      // console.log(newArrayEle);
    }

    tempPassActObj = jsonObject;
    setPassActObj({ ...jsonObject });
    setActivityPojo(tempActivityPojo);
    return jsonObject;
  };

  /**
   * Jumbles the array.
   * @param sent Sentence array to be jumbled.
   * @return returns jumbled array
   **/
  const shuffleArray = (sent) => {
    var sentence = new Array(sent.length);
    sentence = [...sent];
    //System.arraycopy(sent, 0, sentence, 0, sent.length);

    for (var i = sentence.length - 1; i > 0; i--) {
      var index = randomNumberInRange(0, i);
      // Simple swap
      var a = sentence[index];
      sentence[index] = sentence[i];
      sentence[i] = a;
    }

    var count = 0;
    for (var i = 0; i < sentence.length; i++) {
      if (sent[i].toLowerCase() === sentence[i].toLowerCase()) {
        // not shuffled then again shuffle it
        count++;
      }
    }

    if (count == sentence.length) {
      let temp0 = sentence[0];
      let temp1 = sentence[1];
      sentence[1] = temp0;
      temp0 = sentence[2];
      sentence[2] = temp1;
      sentence[0] = temp0;
    }
    return sentence;
  };

  /**
   * Render and bind the data to the elements. According to the activity i.e. exercise_id=3 : Active to Passive conversion and exercise_id=1 : Passive to Active conversion
   */
  function process(data, exercise_id) {
    var obj = data;
    var logPassiveSentence = "";
    var logActiveSentence = "";
    var logJumbledPassiveVoiceWord = "";
    var logJumbledActiveVoiceWord = "";

    if (exercise_id == 3) {
      var jumbled_passive_sentence = new Array(); // was null
      var active_voice = new Array(); // was null
      const nonSortElement = document.getElementById("sortable1");
      empty(nonSortElement);
      active_voice = obj["active_voice_array"];
      jumbled_passive_sentence = obj["jumbled_passive_sentence_array"];

      for (var x = 0; x < active_voice.length; x++) {
        var activeVoiceWord = active_voice[x];
        logActiveSentence += activeVoiceWord + " ";

        if (x == active_voice.length - 1) {
          activeVoiceWord = activeVoiceWord + ".";
          const rootElement = document.getElementById("sortable1");
          const element = document.createElement("li");
          element.setAttribute("id", "li" + x);
          element.setAttribute("class", "ui-state-default");
          element.setAttribute(
            "style",
            "margin: 0px 0px 0px; padding: 0 2px; font-family: arial; font-weight: bold;"
          );
          element.textContent = activeVoiceWord;
          rootElement.appendChild(element);
        } else {
          const rootElement = document.getElementById("sortable1");
          const element = document.createElement("li");
          element.setAttribute("id", "li" + x);
          element.setAttribute("class", "ui-state-default");
          element.setAttribute(
            "style",
            "margin: 0px 0px 0px; padding: 0 2px; font-family: arial; font-weight: bold;"
          );
          element.textContent = activeVoiceWord;
          rootElement.appendChild(element);
        }
      }
    }

    if (exercise_id == 1) {
      var jumbled_active_sentence = new Array(); // was null
      var passive_voice = new Array(); // was null
      const nonSortElement = document.getElementById("sortable1");
      empty(nonSortElement);
      passive_voice = obj["passive_voice_array"];
      jumbled_active_sentence = obj["jumbled_active_sentence_array"];

      for (var x = 0; x < passive_voice.length; x++) {
        var passiveVoiceWord = passive_voice[x];
        logPassiveSentence += passiveVoiceWord + " ";

        if (x == passive_voice.length - 1) {
          passiveVoiceWord = passiveVoiceWord + ".";
          const rootElement = document.getElementById("sortable1");
          const element = document.createElement("li");
          element.setAttribute("id", "li" + x);
          element.setAttribute("class", "ui-state-default");
          element.setAttribute(
            "style",
            "margin: 0px 0px 0px; padding: 0 2px; font-family: arial; font-weight: bold;"
          );
          element.textContent = passiveVoiceWord;
          rootElement.appendChild(element);
        } else {
          const rootElement = document.getElementById("sortable1");
          const element = document.createElement("li");
          element.setAttribute("id", "li" + x);
          element.setAttribute("class", "ui-state-default");
          element.setAttribute(
            "style",
            "margin: 0px 0px 0px; padding: 0 2px; font-family: arial; font-weight: bold;"
          );
          element.textContent = passiveVoiceWord;
          rootElement.appendChild(element);
        }
      }
    }
  }

  const empty = (element) => {
    while (element.firstElementChild) {
      element.firstElementChild.remove();
    }
  };

  const handleChange = (event) => {
    var sentenceTempPath = "";
    setTense(event.target.value);
    tempActivityPojo.sentence_tense = event.target.value;
    sentenceTempPath = getSentenceTempPath();

    if (undefined !== sentenceTempPath || "" === sentenceTempPath) {
      const result = simpleSentenceParser(sentenceTempPath).then((r) => {
        var allNounVrbObj = getDetailedNounVerb(
          actvityId,
          tempPojoSent,
          tempActivityPojo
        );
        setObjectDetails(allNounVrbObj.Noun_verb_nounid, tempActivityPojo);
        setSubjectDetails();
        var listActPass = getVerbInflections();
        articleSelector();
        generateSentence(actvityId, listActPass);
        jumbled_sentence();
        var passDataObj = populateJSON(actvityId);
        process(passDataObj, actvityId);
      });
    }
  };

  const displayScore = () => {
    setOpen(true);
  };

  const handleClose = () => {
    setOpen(false);
  };

  const handleCloseResult = () => {
    setOpenFeedback(false);
  };

  const onClickRestartActivity = () => {
    setOpen(false);
    navigate("/");
  };

  const handleFeedback = (e) => {
    var listSortSent = document.getElementById("sortable").childNodes;
    var user_answer = [];
    var feedbackObj = {};
    var correct_answer = "";

    for (var x = 0; x < listSortSent.length; x++) {
      user_answer.push(listSortSent[x].innerText);
    }

    if (actvityId === 3) {
      correct_answer = ActivityPojo.passive_sentence;
    }

    if (actvityId === 1) {
      correct_answer = ActivityPojo.active_sentence;
    }

    //check_answer(actvityId, user_answer, ActivityPojo.active_sentence, feedbackObj);
    check_answer(actvityId, user_answer, correct_answer, feedbackObj);
    feedbackDisplay(feedbackObj, user_answer);
  };

  const check_answer = (
    exerciseID,
    user_answer,
    correct_answer,
    feedbackObj
  ) => {
    let size = 20;
    var wrong_ans_position = [...Array(size)].fill(21);
    var j = 0;

    // CHECKING THE WRONG POSITIONS OF THE SUBJECT / OBJECT / HELPING VERB /
    // VERBS IN THE USER ANSWER
    for (var i = 0; i < correct_answer.length; i++) {
      if (correct_answer[i].toLowerCase() !== user_answer[i].toLowerCase()) {
        wrong_ans_position[j] = i;
        j = j + 1;
      }
    }

    if (exerciseID === 3) {
      getActiveToPassiveFeedback(wrong_ans_position, user_answer, feedbackObj);
      setFeedbackObj(feedbackObj);
      setOpenFeedback(true);
    }

    if (exerciseID === 1) {
      getPassiveToActiveFeedback(wrong_ans_position, user_answer, feedbackObj);
      setFeedbackObj(feedbackObj);
      setOpenFeedback(true);
    }
  };

  /**
   * Feedback for Passive to active voice activity is retrieved from here.
   * @param wrong_ans_position positions of wrong answers
   * @param user_answer the answer submitted by user word by word
   * @param json_object this object will be populated with all the feedback that is given to the user
   * @throws JSONException throws JSONException
   */
  const getPassiveToActiveFeedback = (
    wrong_ans_position,
    user_answer,
    feedbackObj
  ) => {
    let objectDiagnosis = passActFeedbackProps.object_Diagnosis;
    let subjectDiagnosis = passActFeedbackProps.subject_Diagnosis;
    let mainVerbDiagnosis = passActFeedbackProps.mainVerb_Diagnosis;
    let helpingVerbDiagnosis = passActFeedbackProps.helpingVerb_Diagnosis;
    let objectRemedy = passActFeedbackProps.object_Remedy;
    let subjectRemedy = passActFeedbackProps.subject_Remedy;
    let mainVerbRemedy = passActFeedbackProps.mainVerb_Remedy;
    let helpingVerbRemedy = passActFeedbackProps.helpingVerb_Remedy;
    var subjectArticle = ActivityPojo.subject_article;
    var subjectName = ActivityPojo.subject_name;
    var objectArticle = ActivityPojo.object_article;
    var objectName = ActivityPojo.object_name;
    var jsonArray = {};
    var wrong_flag = 0;

    tempPojoSent = {
      ...TemplatePojo,
    };

    for (var i = 0; i < wrong_ans_position.length; i++) {
      if (wrong_ans_position[i] !== 21) {
        if (
          user_answer[wrong_ans_position[i]].toLowerCase() ===
          objectName.toLowerCase()
        ) {
          wrong_flag = 1;
          var diagRemed = [];
          diagRemed.push(objectDiagnosis);
          diagRemed.push(objectRemedy);
          feedbackObj["object"] = diagRemed;
        } else if (
          user_answer[wrong_ans_position[i]].toLowerCase() ===
          subjectName.toLowerCase()
        ) {
          wrong_flag = 1;
          var diagRemed = [];
          diagRemed.push(subjectDiagnosis);
          diagRemed.push(subjectRemedy);
          feedbackObj["subject"] = diagRemed;
        } else if (
          user_answer[wrong_ans_position[i]].toLowerCase() ===
          ActivityPojo.active_main_verb
        ) {
          wrong_flag = 1;
          var diagRemed = [];
          diagRemed.push(mainVerbDiagnosis);
          diagRemed.push(mainVerbRemedy);
          feedbackObj["main_verb"] = diagRemed;
        } else if (ActivityPojo.active_helping_verb != null) {
          wrong_flag = 1;
          var flag = 0;
          var helping_verb = ActivityPojo.active_helping_verb.split(" ");

          for (var j = 0; j < helping_verb.length; j++) {
            if (
              helping_verb[j].toLowerCase() ===
              user_answer[wrong_ans_position[i]].toLowerCase()
            )
              flag = 1;
          }

          if (flag == 1) {
            var diagRemed = [];
            diagRemed.push(helpingVerbDiagnosis);
            diagRemed.push(helpingVerbRemedy);
            feedbackObj["helping_verb"] = diagRemed;
          }
        }
      }
    }

    if (wrong_flag == 1) {
      feedbackObj["result"] = ActivityPojo.active_voice;
    } else {
      feedbackObj["result"] = "Correct answer";
    }
  };

  const getActiveToPassiveFeedback = (
    wrong_ans_position,
    user_answer,
    feedbackObj
  ) => {
    let objectDiagnosis = passActFeedbackProps.object_Diagnosis;
    let subjectDiagnosis = passActFeedbackProps.subject_Diagnosis;
    let useOfByDiagnosis = passActFeedbackProps.useOfBy_Diagnosis;
    let mainVerbDiagnosis = passActFeedbackProps.mainVerb_Diagnosis;
    let helpingVerbDiagnosis = passActFeedbackProps.helpingVerb_Diagnosis;
    let objectRemedy = passActFeedbackProps.object_Remedy;
    let subjectRemedy = passActFeedbackProps.subject_Remedy;
    let useOfByRemedy = passActFeedbackProps.useOfBy_Remedy;
    let mainVerbRemedy = passActFeedbackProps.mainVerb_Remedy;
    let helpingVerbRemedy = passActFeedbackProps.helpingVerb_Remedy;

    //String subjectArticle = activityPojo.getObject_article();
    //String subjectName = activityPojo.getObject_name();
    //String objectArticle = activityPojo.getSubject_article();
    //String objectName = activityPojo.getSubject_name();
    var subjectArticle = ActivityPojo.subject_article;
    var subjectName = ActivityPojo.subject_name;
    var objectArticle = ActivityPojo.object_article;
    var objectName = ActivityPojo.object_name;
    var jsonArray = {};
    var wrong_flag = 0;

    tempPojoSent = {
      ...TemplatePojo,
    };

    for (var i = 0; i < wrong_ans_position.length; i++) {
      if (wrong_ans_position[i] != 21) {
        if (
          user_answer[wrong_ans_position[i]].toLowerCase() ===
          objectName.toLowerCase()
        ) {
          wrong_flag = 1;
          var diagRemed = [];
          diagRemed.push(objectDiagnosis);
          diagRemed.push(objectRemedy);
          feedbackObj["object"] = diagRemed;
        } else if (
          user_answer[wrong_ans_position[i]].toLowerCase() ===
          subjectName.toLowerCase()
        ) {
          wrong_flag = 1;
          var diagRemed = [];
          diagRemed.push(subjectDiagnosis);
          diagRemed.push(subjectRemedy);
          feedbackObj["subject"] = diagRemed;
        } else if (user_answer[wrong_ans_position[i]].toLowerCase() === "by") {
          wrong_flag = 1;
          var diagRemed = [];
          diagRemed.push(useOfByDiagnosis);
          diagRemed.push(useOfByRemedy);
          feedbackObj["by"] = diagRemed;
        } else if (
          user_answer[wrong_ans_position[i]].toLowerCase() ===
          ActivityPojo.passive_main_verb
        ) {
          wrong_flag = 1;
          var diagRemed = [];
          diagRemed.push(mainVerbDiagnosis);
          diagRemed.push(mainVerbRemedy);
          feedbackObj["main_verb"] = diagRemed;
        } else {
          wrong_flag = 1;
          var flag = 0;
          var helping_verb = ActivityPojo.passive_helping_verb.split(" ");

          for (var j = 0; j < helping_verb.length; j++) {
            if (
              helping_verb[j].toLowerCase() ===
              user_answer[wrong_ans_position[i]].toLowerCase()
            )
              flag = 1;
          }

          if (flag == 1) {
            var diagRemed = [];
            diagRemed.push(helpingVerbDiagnosis);
            diagRemed.push(helpingVerbRemedy);
            feedbackObj["helping_verb"] = diagRemed;
          }
        }
      }
    }

    if (wrong_flag == 1) {
      feedbackObj["result"] = ActivityPojo.passive_voice;
    } else {
      feedbackObj["result"] = "Correct answer";
    }
  };

  const feedbackDisplay = (feedbackObj, user_answer) => {};

  const handleRedirect = () => {
    let newCount = sentCount + 1;
    setSentCount(newCount);

    var sentenceTempPath = "";
    sentenceTempPath = getSentenceTempPath();

    if (undefined !== sentenceTempPath || "" === sentenceTempPath) {
      const result = simpleSentenceParser(sentenceTempPath).then((r) => {
        var allNounVrbObj = getDetailedNounVerb(
          actvityId,
          tempPojoSent,
          tempActivityPojo
        );
        setObjectDetails(allNounVrbObj.Noun_verb_nounid, tempActivityPojo);
        setSubjectDetails();
        var listActPass = getVerbInflections();
        articleSelector();
        generateSentence(actvityId, listActPass);
        jumbled_sentence();
        var passDataObj = populateJSON(actvityId);
        process(passDataObj, actvityId);
      });
    }
  };

  // const handlePassiveActive = (e) => {
  //   navigate("/launchpage/passive-active", { state: { activityId: 1 } });
  // };

  // const handleActivePassive = (e) => {
  //   navigate("/launchpage/active-passive", { state: { activityId: 3 } });
  // };

  const handleLevelChange = (event) => {
    setLevel(event.target.value);
    switch (event.target.value) {
      case "Level 1":
        navigate("/launchpage/active-passive", { state: { activityId: 3 } });
        break;
      case "Level 2":
        navigate("/launchpage/passive-active", { state: { activityId: 1 } });
        break;
      default:
        console.log("Bad choice!");
        break;
    }
  };

  return (
    <div
      className="row d-flex"
      style={{
        width: "100vw",
        backgroundColor: "#F2FBFF",
        borderRadius: "14px",
        opacity: 1,
        boxShadow: "0px 10px 5px rgba(0, 0, 0, 0.40)",
        display: "block",
        overflow: "auto",
      }}
    >
      <div className="col-sm-9 d-flex align-items-center justify-content-center">
        <div
          style={{
            height: "80vh",
            width: "95%",
            background: "#FFFFFF 0% 0% no-repeat padding-box",
            borderRadius: "13px",
            boxShadow: "0px 4px 7px #00000029",
            display: "block",
            padding: "4%",
            paddingTop: "0%",
            overflow: "auto",
            overflowX: "hidden",
            margin: "5px",
            fontSize: "calc(.6rem + .4vw)",
          }}
        >
          <div className="row align-items-center mb-5 mt-2">
            <div className="col-12 d-flex justify-content-center position-relative text-center">
              <div
                className="fw-bolder"
                style={{ fontSize: "calc(1rem + .4vw)" }}
              >
                Passive to active
              </div>

              <img
                src={hintImg}
                alt="hintImage"
                onClick={() => setOpen(true)}
                title={t("hint")}
                style={{
                  position: "absolute",
                  right: "0",
                  top: "50%",
                  transform: "translateY(-50%)",
                  cursor: "pointer",
                }}
              />
            </div>
          </div>

          <div style={{ width: "100%", height: "auto" }}>
            <div
              style={{
                textAlign: "center",
                display: "flex",
                flexDirection: "column",
                alignItems: "center",
                justifyContent: "center",
                height: "100%",
                overflow: "auto",
                padding: "10px",
              }}
            >
              <div
                style={{
                  width: "100%",
                  textAlign: "left",
                  marginBottom: "1rem",
                  fontSize: "calc(.6rem + .4vw)",
                }}
              >
                <div>{hintText}</div>
              </div>

              <Box
                sx={{
                  minWidth: 120,
                  width: "100%",
                  marginBottom: "1rem",
                  background: "#F5B946",
                }}
              >
                <FormControl fullWidth>
                  <InputLabel id="demo-simple-select-label">Tense</InputLabel>
                  <Select
                    labelId="demo-simple-select-label"
                    id="demo-simple-select"
                    value={tense}
                    label="tense"
                    onChange={handleChange}
                  >
                    {tensejson.map((tense, index) => (
                      <MenuItem
                        id={index}
                        key={index}
                        value={tense.activity_name}
                      >
                        {tense.activity_name}
                      </MenuItem>
                    ))}
                  </Select>
                </FormControl>
              </Box>

              <hr style={{ width: "100%" }} />

              <div
                style={{
                  width: "100%",
                  flexGrow: 1,
                  textAlign: "center",
                  display: "flex",
                  flexDirection: "column",
                  justifyContent: "center",
                  padding: "10px 0",
                }}
              >
                <div id="sentence-title-1">
                  Sentence in{" "}
                  {actvityId === 1 ? <>passive voice</> : <>active voice</>}{" "}
                </div>

                <span
                  id="sortable1"
                  style={{
                    display: "inline-flex",
                    padding: 0,
                    margin: 0,
                    justifyContent: "center",
                    listStyle: "none",
                  }}
                ></span>

                <div id="sentence-title-2" style={{ marginTop: "2rem" }}>
                  Sentence in{" "}
                  {actvityId === 1 ? <>active voice</> : <>passive voice</>}{" "}
                </div>

                <div style={{ textAlign: "center", marginTop: "1rem" }}>
                  <ReactSortable
                    id="sortable"
                    style={{ display: "inline-flex" }}
                    list={actList}
                    setList={setActList}
                  >
                    {actList.map((item, index) => (
                      <div id={"li" + index} style={draggableItem} key={item}>
                        {index === 0
                          ? item.charAt(0).toUpperCase() + item.slice(1)
                          : item}
                      </div>
                    ))}
                  </ReactSortable>
                  <span
                    id="sortable"
                    style={{
                      ...draggableItem,
                      display: "inline-flex",
                      marginLeft: "4px",
                    }}
                  >
                    .
                  </span>
                </div>
              </div>

              <hr style={{ width: "100%", marginTop: "2rem" }} />
            </div>
          </div>

          <div className="row">
            <div className="d-flex justify-content-around">
              <Button
                variant="contained"
                onClick={(e) => handleFeedback(e)}
                value="Check"
                sx={{
                  background: "#0F477E",
                  color: "#ffffff",
                  fontSize: "calc(.6rem + .4vw)",
                }}
              >
                {t("verify")}
              </Button>

              <Button
                variant="contained"
                onClick={(e) => handleRedirect(e)}
                value="Next"
                sx={{
                  background: "#0F477E",
                  color: "#ffffff",
                  fontSize: "calc(.6rem + .4vw)",
                }}
              >
                {t("next")}
              </Button>
              <Button
                variant="contained"
                sx={{
                  background: "#0F477E",
                  color: "#ffffff",
                  fontSize: "calc(.6rem + .4vw)",
                }}
                onClick={() =>
                  navigate("/launchpage/englishactivity/restart", {
                    state: { attempted: sentCount, type: "sentences" },
                  })
                }
                value="finish"
              >
                {t("finish")}
              </Button>
            </div>
          </div>

          <Dialog
            open={open}
            onClose={handleClose}
            aria-labelledby="alert-dialog-title"
            aria-describedby="alert-dialog-description"
            PaperProps={{
              sx: {
                width: "50%",
                maxHeight: 300,
              },
            }}
          >
            <DialogTitle
              id="alert-dialog-title"
              style={{ minWidth: "50%", textAlign: "center" }}
            >
              <b>{t("hint")}</b>
            </DialogTitle>
            <DialogContent>
              <DialogContentText id="alert-dialog-description">
                <ul>
                  <li>{t("hint1")}</li>
                  <li>{t("hint2")}</li>
                  <li>{t("hint3")}</li>
                </ul>
              </DialogContentText>
            </DialogContent>
            <DialogActions sx={{ justifyContent: "center" }}>
              {/* <Button
                variant="contained"
                size="small"
                onClick={handleClose}
                sx={{
                  background: "#0F477E",
                  color: "#ffffff",
                  fontSize: "calc(.6rem + .4vw)",
                }}
              >
                {t("cancel")}
              </Button> */}
              <Button
                variant="contained"
                size="small"
                onClick={handleClose}
                sx={{
                  background: "#0F477E",
                  color: "#ffffff",
                  fontSize: "calc(.6rem + .4vw)",
                }}
              >
                {t("ok")}
              </Button>
            </DialogActions>
          </Dialog>

          <Dialog
            fullScreen={fullScreen}
            open={openFeedback}
            onClose={handleCloseResult}
            maxWidth={"lg"}
            aria-labelledby="responsive-dialog-title"
          >
            <DialogTitle
              id="responsive-dialog-title"
              style={{ textAlign: "center" }}
            >
              <b> {t("result")} </b>
            </DialogTitle>
            <DialogContent>
              {fdbackObj["result"] === "Correct answer" ? (
                <div>
                  <span className="text-success">Correct!</span> Your answer is
                  correct.
                </div>
              ) : (
                <Table
                  className="text-center"
                  bordered
                  style={{ border: "1px solid black" }}
                >
                  <thead style={{ background: "#0F477E", color: "#ffffff" }}>
                    <tr>
                      <th colSpan="4" style={{ padding: "10px" }}>
                        {" "}
                        <b> {t("feedback")} </b>{" "}
                      </th>
                    </tr>
                    <tr>
                      <th
                        style={{ padding: "10px", border: "1px solid black" }}
                      >
                        Item
                      </th>
                      <th
                        style={{ padding: "10px", border: "1px solid black" }}
                      >
                        Result
                      </th>
                      <th
                        style={{ padding: "10px", border: "1px solid black" }}
                      >
                        Description
                      </th>
                      <th
                        style={{ padding: "10px", border: "1px solid black" }}
                      >
                        Remedy
                      </th>
                    </tr>
                  </thead>
                  <tbody style={{ background: "#EDF6FA", color: "#000" }}>
                    {Object.keys(fdbackObj).map((method, index) => (
                      <>
                        {method === "subject" ||
                        method === "object" ||
                        method === "main_verb" ||
                        method === "helping_verb" ||
                        method === "by" ? (
                          <tr key={index} style={{ border: "1px solid black" }}>
                            <td
                              style={{
                                padding: "10px",
                                border: "1px solid black",
                              }}
                              key={method + "0"}
                            >
                              {method
                                .replace(/_/g, " ")
                                .replace(/^./, (m) => m.toUpperCase())}{" "}
                            </td>
                            <td
                              style={{
                                textAlign: "center",
                                padding: "5px",
                                border: "1px solid black",
                              }}
                              key={method + "1"}
                            >
                              {" "}
                              <CloseOutlinedIcon style={{ color: "red" }} />
                            </td>
                            <td
                              style={{
                                padding: "10px",
                                border: "1px solid black",
                              }}
                              key={method + "2"}
                            >
                              {fdbackObj[method][0]}
                            </td>
                            <td
                              style={{
                                padding: "10px",
                                border: "1px solid black",
                              }}
                              key={method + "3"}
                            >
                              {fdbackObj[method][1]}
                            </td>
                          </tr>
                        ) : (
                          <tr key={index} style={{ display: "none" }}></tr>
                        )}
                      </>
                    ))}
                  </tbody>
                </Table>
              )}
            </DialogContent>
            <DialogActions sx={{ justifyContent: "center" }}>
              <Button
                variant="contained"
                size="small"
                onClick={handleCloseResult}
                sx={{
                  background: "#0F477E",
                  color: "#ffffff",
                  fontSize: "calc(.6rem + .4vw)",
                }}
              >
                {t("ok")}
              </Button>
            </DialogActions>
          </Dialog>
        </div>
      </div>

      <div className="col-sm-3 d-flex align-items-center justify-content-center">
        <div
          style={{
            height: "80vh",
            width: "95%",
            overflow: "auto",
            overflowX: "hidden",
            borderRadius: "13px",
            boxShadow: "0px 4px 7px #00000029",
            display: "block",
            background: "#FFFFFF 0% 0% no-repeat padding-box",
            margin: "5px",
          }}
        >
          <div
            className="sticky-top text-center subheading"
            style={{
              background: "#002F65",
              borderRadius: "13px 13px 0px 0px",
              opacity: "1",
              color: "#FFFFFF",
              fontSize: "calc(1rem + 0.2vw)",
              fontWeight: "bolder",
            }}
          >
            {t("instr")}
          </div>
          <div
            style={{
              maxHeight: "50vh",
              padding: "2%",
              lineHeight: "30px",
              fontSize: "calc(.6rem + .4vw)",
            }}
          >
            <div>
              <ul>
                <li>{t("instr1")}</li>
                <li>{t("instr2")}</li>
                <li>{t("instr3")}</li>
                <li>{t("instr4")}</li>
                <li>{t("instr5")}</li>
                <li>{t("instr6")}</li>
                <li>{t("instr7")}</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default MidLevelPassiveActivePage;
