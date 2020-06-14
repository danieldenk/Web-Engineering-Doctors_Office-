<%@ Page Title=""  Debug="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ordered_inventory.aspx.cs" Inherits="doctor_specific_ordered_inventory" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;" class="table">
        <thead>
            <tr>
                <td>Item</td>
                <td>Amount</td>
                <td>Reason</td>
                <td>Orderer</td>
            </tr>
        </thead>
        <tr>
            <td>
                <asp:TextBox  ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="TextBox2"  FilterType="Numbers" runat="server"/>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>" ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>">
    </asp:SqlDataSource>

    <asp:Button ID="Button1" runat="server" CssClass="btn btn-secondary" Text="Send Order Request" Width="100%" OnClientClick="Button1_Click" OnClick="Button1_Click"/>
    <p></p>
    <asp:Label ID="Label1" runat="server" ForeColor="Green" Text="Label" Visible="False" Font-Bold="True"></asp:Label>

    <br />

    <br />
    <asp:GridView CssClass="table" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Delete Order" />
        </Columns>
    </asp:GridView>
    <br />

</asp:Content>

