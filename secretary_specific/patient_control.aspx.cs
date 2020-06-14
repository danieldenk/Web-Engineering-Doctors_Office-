using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
/*
 * This page is providing functionality to
 * -> Search for a patient
 * -> Delete a patient
 * -> Insert a patient into the system incl. his photo 
 * 
 * (PLEASE NOTE: THIS DOES NOT INCLUDE THE REGISTRATION, FOR THE MOMENT THIS IS STILL HAPPENING IN THE ASP.NET CONFIG UNDER "WEBSITE")
 */
public partial class secretary_specific_new_patient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ListView1.DataBind();
        ListView2.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlDataSource1.SelectCommand = "SELECT * FROM [PATIENT] WHERE [FIRSTNAME] & \" \" & [LASTNAME]=\"" + TextBox1.Text + "\";";
        ListView1.DataBind();

        SqlDataSource3.SelectCommand = "SELECT [IMG_NAME] FROM [PATIENT] WHERE [FIRSTNAME] & \" \" & [LASTNAME]=\"" + TextBox1.Text + "\";";
        ListView2.DataBind();
        //TextBox5.Text = user;
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource1.DeleteCommand = "DELETE FROM [PATIENT] WHERE [Username]=\"" + TextBox2.Text + "\";";
        SqlDataSource1.Delete();
        ListView1.DataBind();
        Label10.Text = "The patient was successfully deleted!";
        Label10.ForeColor = System.Drawing.Color.Green;
        Label10.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox7.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox8.Text == "")
        {
            Label10.Text = "Please insert all the required fields!";
            Label10.ForeColor = System.Drawing.Color.Red;
            Label10.Visible = true;
            return;
        }
        String img = "";

        if (FileUpload1.PostedFile != null)
        {
            img = "Images\\" + Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(HttpContext.Current.Server.MapPath("~")+"/secretary_specific/" + img);

        }

        SqlDataSource1.InsertCommand = "INSERT INTO [PATIENT] ([USERNAME],[FIRSTNAME], [LASTNAME], [ADDRESS], [TEL], [MAIL], [ASSIGNEDDR], [IMG_NAME]) VALUES(\"" 
            + TextBox7.Text + "\", "+
            "\""+TextBox3.Text + "\", " +
            "\"" + TextBox4.Text + "\", " +
            "\"" + TextBox5.Text + "\", " +
            "\"" + TextBox6.Text + "\", " +
             "\"" + TextBox8.Text + "\", " +
              "\"" + DropDownList1.Text + "\"" +
            ", \"" + img + "\"" + ");";

        ListView2.DataBind();

        /*SqlDataSource1.InsertCommand = "INSERT INTO [PATIENT] ([USERNAME],[FIRSTNAME], [LASTNAME], [ADDRESS], [TEL], [MAIL], [ASSIGNEDDR]) VALUES(@user,@fname,@lname,@address,@tel,@mail,@dr);";
            SqlDataSource1.InsertParameters. Add("@user",TextBox7.Text);
        SqlDataSource1.InsertParameters. Add("@fname",TextBox3.Text);
        SqlDataSource1.InsertParameters. Add("@lname",TextBox4.Text);
        SqlDataSource1.InsertParameters. Add("@address",TextBox5.Text);
        SqlDataSource1.InsertParameters. Add("@tel",TextBox6.Text);
        SqlDataSource1.InsertParameters. Add("@mail",TextBox8.Text);
        SqlDataSource1.InsertParameters. Add("@dr",DropDownList1.Text);*/

        SqlDataSource1.Insert();
        ListView1.DataBind();

        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        Label10.ForeColor = System.Drawing.Color.Green;
        Label10.Text = "The patient was successfully inserted!";
        Label10.Visible = true;
    }


}