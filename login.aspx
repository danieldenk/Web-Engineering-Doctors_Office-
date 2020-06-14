<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%;height:425px;background-image: url('https://images.assetsdelivery.com/compings_v2/jirsak/jirsak1511/jirsak151100024.jpg'); background-repeat: no-repeat;background-attachment: fixed;background-size: cover;">
        <div style="transform: translate(0%,50%);">
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="home.aspx" CssClass="btn"></asp:Login>
        </div> 
        </div>

   
</asp:Content>

