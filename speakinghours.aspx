<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="speakinghours.aspx.cs" Inherits="speakinghours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p>You can reach us during the following days and hours:</p>
<table class="table">
     <thead>
    <tr>
      <th scope="col">Weekday</th>
      <th scope="col">Time</th>
    </tr>
  </thead>
    <tr>
        <td>Monday</td>
        <td>07:00 - 18:00</td>
    </tr>
    <tr>
        <td>Tuesday</td>
        <td>07:00 - 18:00</td>
    </tr>
    <tr>
        <td>Wednesday</td>
        <td>07:00 - 18:00</td>
    </tr>
    <tr>
        <td>Thursday</td>
        <td>07:00 - 18:00</td>
    </tr>
    <tr>
        <td>Friday</td>
        <td>07:00 - 18:00</td>
    </tr>
    <tr>
        <td>Saturday</td>
        <td>No office hours</td>
    </tr>
    <tr>
        <td>Sunday</td>
        <td>No office hours</td>
    </tr>
</table>
    <p>Or write us a mail to <strong>evil@evilcorp.com</strong></p>
</asp:Content>

