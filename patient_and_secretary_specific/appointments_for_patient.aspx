<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="appointments_for_patient.aspx.cs" Inherits="appointments_for_patient" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Choose a doctor:"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DrName" DataValueField="DrName" AutoPostBack="True"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>" ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" SelectCommand="SELECT [DrName] FROM [Doctors]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>" ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" SelectCommand="SELECT * FROM [Timeslots]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Pick the Date for your Appointment:"></asp:Label>
    <asp:Calendar ID="Calendar1" runat="server" AutoPostBack="True"></asp:Calendar>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Pick the Time for your Appointment:"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Timeslot" DataValueField="Timeslot">
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>" ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" SelectCommand="SELECT [Timeslot] FROM [Timeslots] WHERE (([DoctorName] = ?) AND ([Patient] IS NULL) AND ([AppointmentDate] IS NULL))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="DoctorName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" ForeColor="#0099FF" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Additional Info about Problems:"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book the Appointment" CssClass="btn btn-lg btn-secondary btn-block"/>
    <br />
    <br />
    <asp:GridView CssClass="table" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField SelectText="Cancel Appointment" ShowSelectButton="True" />
            <asp:BoundField DataField="Doctor" HeaderText="Doctor" SortExpression="Doctor" />
            <asp:BoundField DataField="Timeslot" HeaderText="Timeslot" SortExpression="Timeslot" />
            <asp:BoundField DataField="Patient" HeaderText="Patient" SortExpression="Patient" />
            <asp:BoundField DataField="Problems" HeaderText="Problems" SortExpression="Problems" />
            <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
            <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
</asp:Content>

