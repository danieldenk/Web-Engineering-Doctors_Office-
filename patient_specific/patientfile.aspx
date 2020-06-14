<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="patientfile.aspx.cs" Inherits="patientfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="PatientID" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            PatientID:
            <asp:Label ID="PatientIDLabel" runat="server" Text='<%# Eval("PatientID") %>' />
            <br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Tel:
            <asp:Label ID="TelLabel" runat="server" Text='<%# Eval("Tel") %>' />
            <br />
            Mail:
            <asp:Label ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' />
            <br />
            Medication:
            <asp:Label ID="MedicationLabel" runat="server" Text='<%# Eval("Medication") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>"
        ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" >
    </asp:SqlDataSource>
</asp:Content>

