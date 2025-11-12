import * as React from "react";
import { Table } from "react-bootstrap";

export default function TableRulesPronNounNum() {
  return (
    <Table
      className="text-center"
      bordered
      style={{ border: "1px solid black" }}
    >
      <thead style={{ background: "#0F477E", color: "#ffffff" }}>
        <tr>
          <th>Number\Person</th>
          <th>I</th>
          <th>II</th>
          <th>III</th>
        </tr>
      </thead>
      <tbody style={{ background: "#EDF6FA", color: "#000" }}>
        <tr>
          <td>Singular</td>
          <td>I -&gt; am</td>
          <td>you -&gt; are&nbsp;</td>
          <td>
            <p>
              <span>he,she,it -&gt; is</span>
            </p>
            <p>
              <span>John,Sara -&gt; is</span>
            </p>
          </td>
        </tr>
        <tr>
          <td>Plural</td>
          <td>&nbsp;we -&gt; are&nbsp;</td>
          <td>you -&gt; are</td>
          <td>they -&gt; are</td>
        </tr>
      </tbody>
    </Table>
  );
}
