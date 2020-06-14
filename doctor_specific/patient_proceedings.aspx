<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="patient_proceedings.aspx.cs" Inherits="doctor_specific_patient_proceedings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h3>Here you can see your assigned patients: </h3>
    <p>If you want to change the treatment and medication plan please type it in beneath and press the submit button:</p>
    
    <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" >
         <asp:Label ID="Label1" runat="server" Text="Label">Username:</asp:Label>
    </span>
  </div>
       <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
</div><br />

       <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" >
        <asp:Label ID="Label2" runat="server" Text="Label">Problems:</asp:Label>
    </span>
  </div>
       <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
</div>
    <br />
           <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" >
            <asp:Label ID="Label3" runat="server" Text="Label">Treatment:</asp:Label>
    </span>
  </div>
       <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
</div>
    <br />

               <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" >
                 <asp:Label ID="Label4" runat="server" Text="Label">Medication:</asp:Label>
    </span>
  </div>
       <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>
</div>

    <br />
    <asp:Button CssClass="btn btn-secondary btn-lg btn-block" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />

    <br />
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    <br />


       <div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" >
             <asp:Label ID="Label6" runat="server" Text="Filter based on Lastname: "></asp:Label>
    </span>
  </div>
           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox>
<asp:Button ID="Button2" CssClass="btn btn-secondary" runat="server" OnClick="Button2_Click" Text="Filter" />
</div>
<br />
    <br />
    <h3>View your patients here:</h3>
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="PatientID" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="background-color: #dcf5ff">PatientID:
            <asp:Label ID="PatientIDLabel" runat="server" Text='<%# Eval("PatientID") %>' />
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
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Tel:
            <asp:Label ID="TelLabel" runat="server" Text='<%# Eval("Tel") %>' />
            <br />
            Mail:
            <asp:Label ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' />
            <br />
            Problems:
            <asp:Label ID="ProblemsLabel" runat="server" Text='<%# Eval("Problems") %>' />
            <br />
            Treatment:
            <asp:Label ID="TreatmentLabel" runat="server" Text='<%# Eval("Treatment") %>' />
            <br />
            Medication:
            <asp:Label ID="MedicationLabel" runat="server" Text='<%# Eval("Medication") %>' />
            <br />
            AssignedDr:
            <asp:Label ID="AssignedDrLabel" runat="server" Text='<%# Eval("AssignedDr") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #008A8C;color: #FFFFFF;">PatientID:
            <asp:Label ID="PatientIDLabel1" runat="server" Text='<%# Eval("PatientID") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            FirstName:
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
            Mail:
            <asp:TextBox ID="MailTextBox" runat="server" Text='<%# Bind("Mail") %>' />
            <br />
            Problems:
            <asp:TextBox ID="ProblemsTextBox" runat="server" Text='<%# Bind("Problems") %>' />
            <br />
            Treatment:
            <asp:TextBox ID="TreatmentTextBox" runat="server" Text='<%# Bind("Treatment") %>' />
            <br />
            Medication:
            <asp:TextBox ID="MedicationTextBox" runat="server" Text='<%# Bind("Medication") %>' />
            <br />
            AssignedDr:
            <asp:TextBox ID="AssignedDrTextBox" runat="server" Text='<%# Bind("AssignedDr") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />Tel:
            <asp:TextBox ID="TelTextBox" runat="server" Text='<%# Bind("Tel") %>' />
            <br />Mail:
            <asp:TextBox ID="MailTextBox" runat="server" Text='<%# Bind("Mail") %>' />
            <br />Problems:
            <asp:TextBox ID="ProblemsTextBox" runat="server" Text='<%# Bind("Problems") %>' />
            <br />Treatment:
            <asp:TextBox ID="TreatmentTextBox" runat="server" Text='<%# Bind("Treatment") %>' />
            <br />Medication:
            <asp:TextBox ID="MedicationTextBox" runat="server" Text='<%# Bind("Medication") %>' />
            <br />AssignedDr:
            <asp:TextBox ID="AssignedDrTextBox" runat="server" Text='<%# Bind("AssignedDr") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #ebebeb;color: #000000;">PatientID:
            <asp:Label ID="PatientIDLabel" runat="server" Text='<%# Eval("PatientID") %>' />
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
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Tel:
            <asp:Label ID="TelLabel" runat="server" Text='<%# Eval("Tel") %>' />
            <br />
            Mail:
            <asp:Label ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' />
            <br />
            Problems:
            <asp:Label ID="ProblemsLabel" runat="server" Text='<%# Eval("Problems") %>' />
            <br />
            Treatment:
            <asp:Label ID="TreatmentLabel" runat="server" Text='<%# Eval("Treatment") %>' />
            <br />
            Medication:
            <asp:Label ID="MedicationLabel" runat="server" Text='<%# Eval("Medication") %>' />
            <br />
            AssignedDr:
            <asp:Label ID="AssignedDrLabel" runat="server" Text='<%# Eval("AssignedDr") %>' />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #ebebeb;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #ebebeb;font-weight: bold;color: #FFFFFF;">PatientID:
            <asp:Label ID="PatientIDLabel" runat="server" Text='<%# Eval("PatientID") %>' />
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
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            Tel:
            <asp:Label ID="TelLabel" runat="server" Text='<%# Eval("Tel") %>' />
            <br />
            Mail:
            <asp:Label ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' />
            <br />
            Problems:
            <asp:Label ID="ProblemsLabel" runat="server" Text='<%# Eval("Problems") %>' />
            <br />
            Treatment:
            <asp:Label ID="TreatmentLabel" runat="server" Text='<%# Eval("Treatment") %>' />
            <br />
            Medication:
            <asp:Label ID="MedicationLabel" runat="server" Text='<%# Eval("Medication") %>' />
            <br />
            AssignedDr:
            <asp:Label ID="AssignedDrLabel" runat="server" Text='<%# Eval("AssignedDr") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAccess %>"
        ProviderName="<%$ ConnectionStrings:ConnectionStringAccess.ProviderName %>" SelectCommand="SELECT * FROM [patient]" >
    </asp:SqlDataSource>
</asp:Content>

