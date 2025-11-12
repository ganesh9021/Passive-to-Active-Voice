import * as React from "react";
import { Table } from "react-bootstrap";

export default function TableRulesPronPassAct() {
  return (
    <Table
      className="text-center"
      bordered
      style={{ border: "1px solid black" }}
    >
      <thead style={{ background: "#0F477E", color: "#ffffff" }}>
        <tr>
          <th>Passive voice</th>
          <th>Active voice</th>
        </tr>
      </thead>
      <tbody style={{ background: "#EDF6FA", color: "#000" }}>
        <tr>
          <td>me</td>
          <td>I</td>
        </tr>
        <tr>
          <td>you</td>
          <td>you</td>
        </tr>
        <tr>
          <td>us</td>
          <td>we</td>
        </tr>
        <tr>
          <td>them</td>
          <td>they</td>
        </tr>
        <tr>
          <td>it</td>
          <td>it</td>
        </tr>
      </tbody>
    </Table>
  );
}
