<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="display_appointments.aspx.cs" Inherits="secretary_and_doctor_specific_display_appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>" ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" SelectCommand="SELECT * FROM [Timeslots] WHERE ([AppointmentDate] IS NOT NULL)"></asp:SqlDataSource>
    <div style="height:53%;">
    <asp:GridView CssClass="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Doctor" HeaderText="Doctor" SortExpression="Doctor" />
            <asp:BoundField DataField="Timeslot" HeaderText="Timeslot" SortExpression="Timeslot" />
            <asp:BoundField DataField="Patient" HeaderText="Patient" SortExpression="Patient" />
            <asp:BoundField DataField="Problems" HeaderText="Problems" SortExpression="Problems" />
            <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
            <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
        </Columns>
    </asp:GridView>
    <strong><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></strong>
            </div>
</asp:Content>

