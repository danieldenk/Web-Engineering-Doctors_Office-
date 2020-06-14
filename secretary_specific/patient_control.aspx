<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="patient_control.aspx.cs" Inherits="secretary_specific_new_patient" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Filter based on the Name:</h2>
     <div class="input-group mb-3">
         <asp:Label ID="Label1" CssClass="input-group-text" runat="server" Text="Full Name:"></asp:Label>
    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
      <asp:Button ID="Button1" CssClass="btn btn-outline-secondary" runat="server" Text="Filter" OnClick="Button1_Click" />
</div>

    
    <h2>Delete a patient:</h2>
         <div class="input-group mb-3">
         <asp:Label ID="Label2" CssClass="input-group-text" runat="server" Text="Username:"></asp:Label>
    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
      <asp:Button ID="Button2" CssClass="btn btn-outline-secondary" runat="server" Text="Delete Patient" OnClick="Button2_Click" />
</div>

    <p></p>

    <h3>Insert new patient here:</h3>
   

     <div class="input-group mb-2">
        <div class="input-group-prepend">
            <asp:Label ID="Label3" CssClass="input-group-text" runat="server" Text="First Name:"></asp:Label><br />
        </div> 
        <br />
         <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

        <br />
        
   

    <div class="input-group mb-2">
        <div class="input-group-prepend">
           <asp:Label ID="Label4" CssClass="input-group-text" runat="server" Text="Last Name:"></asp:Label>
        </div> 
        <br />
         <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
    </div>




        <br />


                <div class="input-group mb-2">
        <div class="input-group-prepend">
             <asp:Label ID="Label5" CssClass="input-group-text" runat="server" Text="Address:"></asp:Label>
        </div> 
        <br />
        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

       
    
        <br />


            <div class="input-group mb-2">
        <div class="input-group-prepend">
             <asp:Label ID="Label6" CssClass="input-group-text" runat="server" Text="Telephone Nr:"></asp:Label>
        </div> 
        <br />
        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="TextBox6"  FilterType="Custom, Numbers" ValidChars="+/-" runat="server" />
                
    </div>
        
        
    
        <br />


        <div class="input-group mb-2">
        <div class="input-group-prepend">
             <asp:Label ID="Label7" CssClass="input-group-text" runat="server" Text="Username: "></asp:Label>
        </div> 
        <br />
        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        
    
        <br />

    <div class="input-group mb-2">
        <div class="input-group-prepend" style="display: inline-block;vertical-align: top;">
             <asp:Label ID="Label8" CssClass="input-group-text" runat="server" Text="Mail: "></asp:Label>
        </div> 
        <br />
        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

        <br />

    <div class="input-group mb-2">
        <div class="input-group-prepend">
            <asp:Label ID="Label9" CssClass="input-group-text" runat="server" Text="Assigned Doctor: "></asp:Label>
           
        </div> <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="DrName" DataValueField="DrName" CssClass="custom-select"></asp:DropDownList>
    </div>
        
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>" ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" SelectCommand="SELECT [DrName] FROM [Doctors]"></asp:SqlDataSource>
    Upload Image:<br />

    <div style="border: 1px solid black;">
    <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
    <br />
    <asp:Button ID="Button3" runat="server" CssClass="btn btn-secondary btn-block" OnClick="Button3_Click" Text="Insert Patient" />
    <br />

    <asp:Label ID="Label10" runat="server" Text="" ForeColor="Green" Enabled="False"></asp:Label>

    <br />



    <p>    </p>
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource3">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Image ID="IMG_NameLabel" runat="server" ImageUrl='<%# Eval("IMG_Name") %>' Style = "position: relative; left: 9px; top: 14px;max-width:150px" />
                    </td>
                </tr>

            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Image ID="IMG_NameLabel" runat="server" ImageUrl='<%# Eval("IMG_Name") %>' style = "position: relative; left: 9px; top: 14px;max-width:150px" />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:Image ID="IMG_NameLabel" runat="server" ImageUrl='<%# Eval("IMG_Name") %>' style = "position: relative; left: 9px; top: 14px;max-width:150px"/>
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                  <asp:Image ID="IMG_NameLabel" runat="server" ImageUrl='<%# Eval("IMG_Name") %>' style = "position: relative; left: 9px; top: 14px;max-width:150px" />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">Profile Picture:</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Image ID="IMG_NameLabel" runat="server" ImageUrl='<%# Eval("IMG_Name") %>' style = "position: relative; left: 9px; top: 14px;max-width:150px"/>
                    </td>
                </tr>
            </SelectedItemTemplate>
   </asp:ListView>



    <br />



    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>" ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" SelectCommand="SELECT [IMG_Name] FROM [patient]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="">FirstName:
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
                UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />
                Mail:
                <asp:Label ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' />
                <br />
                AssignedDr:
                <asp:Label ID="AssignedDrLabel" runat="server" Text='<%# Eval("AssignedDr") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="">FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                Tel:
                <asp:TextBox ID="TelTextBox" runat="server" Text='<%# Bind("Tel") %>' />
                <br />
                UserName:
                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                <br />
                Mail:
                <asp:TextBox ID="MailTextBox" runat="server" Text='<%# Bind("Mail") %>' />
                <br />
                AssignedDr:
                <asp:TextBox ID="AssignedDrTextBox" runat="server" Text='<%# Bind("AssignedDr") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />Tel:
                <asp:TextBox ID="TelTextBox" runat="server" Text='<%# Bind("Tel") %>' />
                <br />UserName:
                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                <br />Mail:
                <asp:TextBox ID="MailTextBox" runat="server" Text='<%# Bind("Mail") %>' />
                <br />AssignedDr:
                <asp:TextBox ID="AssignedDrTextBox" runat="server" Text='<%# Bind("AssignedDr") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="">FirstName:
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
                UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />
                Mail:
                <asp:Label ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' />
                <br />
                AssignedDr:
                <asp:Label ID="AssignedDrLabel" runat="server" Text='<%# Eval("AssignedDr") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="">FirstName:
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
                UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />
                Mail:
                <asp:Label ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' />
                <br />
                AssignedDr:
                <asp:Label ID="AssignedDrLabel" runat="server" Text='<%# Eval("AssignedDr") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>" ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" SelectCommand="SELECT [FirstName], [LastName], [Address], [Tel], [UserName], [Mail], [AssignedDr] FROM [patient]"></asp:SqlDataSource>
</asp:Content>

