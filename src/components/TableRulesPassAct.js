import * as React from "react";
import { Table } from "react-bootstrap";

export default function TableRulesPassAct() {
  return (
    <Table
      className="text-center"
      bordered
      style={{ border: "1px solid black" }}
    >
      <thead style={{ background: "#0F477E", color: "#ffffff" }}>
        <tr>
          <th>Tense</th>
          <th>Passive voice</th>
          <th>Active voice</th>
        </tr>
      </thead>
      <tbody style={{ background: "#EDF6FA", color: "#000" }}>
        <tr>
          <td>Simple Present Tense</td>
          <td>S + to be + past participle + by object</td>
          <td>Subject + infinitive + object</td>
        </tr>
        <tr>
          <td>Present Continuous Tense</td>
          <td>S + to be (is, am, are) + being + past participle + by object</td>
          <td>
            Subject + to be (is, am, are) being + present participle + object
          </td>
        </tr>
        <tr>
          <td>Present Perfect Tense</td>
          <td>S + have/has been + past participle + by object</td>
          <td>Subject + has/have + past participle + object</td>
        </tr>
        <tr>
          <td>Simple Past Tense</td>
          <td>S + was/were + past participle + by object</td>
          <td>Subject + past participle + object</td>
        </tr>
        <tr>
          <td>Past Continuous Tense</td>
          <td>S + was/were + being + past participle +by object</td>
          <td>S + was/were + being + past participle + object</td>
        </tr>
        <tr>
          <td>Past Perfect Tense</td>
          <td>S + had been + past participle + by object</td>
          <td>Subject + had + past participle + object</td>
        </tr>
        <tr>
          <td>Simple Future Tense</td>
          <td>S + will + be + past participle + by object</td>
          <td>Subject + will + infinitive + object</td>
        </tr>
        <tr>
          <td>Future Perfect Tense</td>
          <td>S + would + be + past participle + by object</td>
          <td>Subject + would + infinitive + object</td>
        </tr>
      </tbody>
    </Table>
  );
}
