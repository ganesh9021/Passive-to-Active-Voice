import React from "react";
import TableRulesPassAct from "./TableRulesPassAct";
import TableRulesPronPassAct from "./TableRulesPronPassAct";
import TableRulesPronNounNum from "./TableRulesPronNounNum";
import "../resources/TheoryMidcontent.css";
import { useTranslation } from "react-i18next";

const TheoryMidContent = () => {
  const { t } = useTranslation();
  return (
    <div
      className="py-3"
      style={{
        overflow: "auto",
        width: "100%",
        paddingRight: "10px",
        fontSize: "calc(.6rem + .4vw)",
      }}
    >
      <div className="fw-bolder">{t("obj")}</div>
      <p className="ms-3">{t("objective")} </p>

      <div className="fw-bolder">What is Voice?</div>
      <p className="ms-3">
        "A Grammar of Contemporary English" defines Voice as "voice is a
        grammatical category which makes it possible to view the action of a
        sentence in two ways, without change in the facts reported". One and the
        same idea can often be expressed in two different ways, by means of an
        active, and by means of a passive construction.
      </p>

      <ol>
        <li>Active voice</li>
        <ul>
          <li>
            {" "}
            Active voice is used to indicate the grammatical subject of the verb
            is performing the action or causing the happening denoted by the
            verb. With the active voice, you learn ‘who’ or ‘what’ is
            responsible for the action at the beginning of the sentence. In
            other words, the subject performs the action denoted by the verb.
            With help of active voice more powerful sentences can be build than
            passive voice.
          </li>
          <li>Use of active voice:</li>
          <ol>
            <li>
              Active voice is used in a clause whose subject expresses the agent
              of the main verb.
            </li>
            <li>
              Subject can be easily identified by asking ‘who’ or ‘what’ to the
              verb.
            </li>
            <li>Sentences are short and easily understandable.</li>
          </ol>
          <li>Example</li>
          <ol>
            <li>John wrote the letter</li>
            <p>
              Explanation: John (<strong>subject</strong>) performs the action
              denoted by the verb (<strong>write</strong>).
            </p>
          </ol>
        </ul>

        <li>Passive voice</li>

        <ul>
          <li>
            In Passive voice the sentence focus on object i.e. who/what is
            receiving the action and not on who/what is performing the action.
            In passive voice, the actor of the of the verb (action) is either
            understood at the end of the sentence or maybe not told. The passive
            voice is used in writing facts, truth, lab or technical reports in
            which the actor is not important or unknown, but the action
            happening on the object is very important.
          </li>
          <li>Use of passive voice</li>
          <ol>
            <li>
              It is used if it doesn‘t need to know or we don‘t know the actor
              performing the job.
            </li>
            <li>
              In the end of the clause or sentence "by" is prefixed to know the
              actor performing the job.
            </li>
            <li>
              It is used if we are more interested in the job than the actors
              who work.
            </li>
          </ol>
          <li>Example:</li>
          <ol>
            <li>The letter was written by John.</li>
            <p>
              Explanation: letter receives the <em>action</em> denoted by the{" "}
              <strong>write </strong>(verb).
            </p>
          </ol>
        </ul>
      </ol>

      <div className="fw-bolder">Active/Passive voice using Modals:</div>
      <p className="ms-3">
        <span>
          The modal verbs consist of will, would, can, could, shall, should,
          may, might, must which are used with main verbs to express ability,
          probability, obligation, advice etc. To convert active voice having
          modal into passive voice, auxiliary verb "be" is added after modal in
          sentence.
        </span>
      </p>

      <div className="fw-bolder">
        {" "}
        <strong>How to identify the active / passive voice?</strong>{" "}
      </div>
      <p className="ms-3">
        {" "}
        <span>
          Ask who/what performed the action(verb)? -- if the '
          <strong>who</strong> or <strong>what</strong> is at the beginning of
          the sentence, the sentence is active voice<strong>.</strong>
        </span>
      </p>

      <ul style={{ listStyleType: "none" }}>
        <li>
          <strong>Example:</strong> <br /> Jack is eating the apple.
        </li>
        <li>
          <span>
            <strong>Question will be : </strong>
            <em>Who is eating the apple?&nbsp;&nbsp; </em>
            <br />
            Look for the word "
            <strong>
              <em>by</em>
            </strong>
            ", if present it is passive voice.
          </span>
        </li>
      </ul>

      <div className="fw-bolder">
        <strong>
          <span> Tips to Recognize the Passive Voice:</span>
        </strong>
      </div>
      <p>
        <span>
          {" "}
          In order to recognize that a sentence is in passive voice, watch out
          for these keywords:
        </span>
      </p>
      <ul>
        <li>
          <strong>
            <span>Be,</span>
          </strong>
        </li>
        <li>
          <strong>
            <span>Is/Are + Past Participle form of the verb,</span>
          </strong>
        </li>
        <li>
          <strong>
            <span>Was/Were + Past Participle form of the verb,</span>
          </strong>
        </li>
        <li>
          <strong>
            <span>was/were + being,</span>
          </strong>
        </li>
        <li>
          <strong>
            <span>Has/</span>
            <span>Have/Had been,</span>
          </strong>
        </li>
        <li>
          <strong>
            <span>Will be,</span>
          </strong>
        </li>
        <li>
          <strong>
            <span>Being,</span>
          </strong>
        </li>
        <li>
          <strong>
            <span>Past Participle form of the verb</span>
          </strong>
        </li>
      </ul>

      {/************************ First Table ******************/}
      <div className="fw-bolder">
        <strong>
          <span> Table 1: Rules for Passive to Active conversion</span>
        </strong>
      </div>
      <TableRulesPassAct />
      <p>&nbsp;</p>
      {/************************ Second Table ******************/}
      <div className="fw-bolder">
        <strong>
          <span>
            {" "}
            Table 2: Rules for Pronouns in Passive to Active conversion
          </span>
        </strong>
      </div>
      <TableRulesPronPassAct />
      <p>&nbsp;</p>
      {/************************ Third Table ******************/}
      <div className="fw-bolder">
        <strong>
          <span> Table 3: Pronoun number and person table</span>
        </strong>
      </div>
      <TableRulesPronNounNum />
      {/*********************** Third Table ****************************/}
    </div>
  );
};

export default TheoryMidContent;
