<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact_information.aspx.cs" Inherits="patient_specific_contact_information" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Make changes to your personal data here:</h2>

    <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text">    
        <asp:Label ID="Label1" runat="server" Text="Address"></asp:Label></span>
  </div>
        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
 </div>


    <br />

        <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text">    
        <asp:Label ID="Label2" runat="server" Text="Telephone"></asp:Label>
    </span>
  </div>
        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="TextBox2"  FilterType="Numbers, Custom" ValidChars="+/-" runat="server" />
           
 </div>

     <br />

            <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text">    
         <asp:Label ID="Label3" runat="server" Text="Mail"></asp:Label>
    </span>
  </div>
        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
 </div>

   <br />
              <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text">    
        <asp:Label ID="Label6" runat="server" Enabled="False" Text="Username"></asp:Label>
    </span>
  </div>
        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox>
 </div>

    <br />

    <p>If you want to change your Doctor as well you can do it here:</p>

                  <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text">    
        <asp:Label ID="Label4" runat="server" Text="Assigned Doctor"></asp:Label>
    </span>
  </div>
        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
 </div>
<br />
 

     <asp:Label ID="Label5" runat="server" Text="Doctors Available are the following:"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="DrName" HeaderText="Doctor's Name" SortExpression="DrName" />
        </Columns>
    </asp:GridView>
   <br />
          <asp:Button CssClass="btn btn-secondary btn-lg btn-block" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Changes" />
 
    <br />

    <asp:DataList ID="DataList1" runat="server" DataKeyField="PatientID" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            PatientID:
            <asp:Label ID="PatientIDLabel" runat="server" Text='<%# Eval("PatientID") %>' />
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
            AssignedDr:
            <asp:Label ID="AssignedDrLabel" runat="server" Text='<%# Eval("AssignedDr") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>" ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" SelectCommand="SELECT [PatientID], [Address], [Tel], [Mail], [AssignedDr], [UserName], [FirstName], [LastName] FROM [patient]"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>" ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" SelectCommand="SELECT [DrName] FROM [Doctors]"></asp:SqlDataSource>
</asp:Content>

