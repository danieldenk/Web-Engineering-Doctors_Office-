using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration; 
/*
 * This page offers functionality for changing the treatment and medication plan of a patient
 * You can filter for a patient based on his Lastname 
 * -> then you can see his corresponding user name
 * -> then you can submit changes to the patient file
 *  NOTE: BY DEFAULT PAST DATA WILL BE OVERWRITTEN
 * */
public partial class doctor_specific_patient_proceedings : System.Web.UI.Page
{
    String user = System.Web.HttpContext.Current.User.Identity.Name.ToString();
    protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Visible = false;

            if (System.Web.HttpContext.Current.User.IsInRole("admin"))
                SqlDataSource1.SelectCommand = "Select * from [Patient];";
            
            else
               SqlDataSource1.SelectCommand = "Select * from [Patient] Where [AssignedDr]=\"" + user+"\";";
        }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringAccess"].ToString();
        conn.Open();
        OleDbCommand command = new OleDbCommand();
        command.Connection = conn;
        command.CommandText = "UPDATE [Patient] SET [Problems]=\"" + TextBox2.Text + "\", [Treatment]=\"" + TextBox3.Text + "\", [Medication]=\"" + TextBox4.Text + "\" WHERE [Username]=\"" + TextBox1.Text + "\";";
        // ALTERNATIVELY (THIS IS MORE ELEGANT):
        //command.CommandText = "UPDATE [Patient] SET [Problems]=@problems, [Treatment]=@treatment, [Medication]=@medication WHERE [Username]=@user;";
        //command.Parameters.AddWithValue("@user", TextBox1.Text);
        //command.Parameters.AddWithValue("@problems", TextBox2.Text);
        //command.Parameters.AddWithValue("@treatment", TextBox3.Text);
        //command.Parameters.AddWithValue("@medication", TextBox4.Text);
        try
        {
            command.ExecuteNonQuery();

            Label5.Text = "Request was succesfully sent!";
            Label5.Visible = true;
            Label5.ForeColor = System.Drawing.Color.Green;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        catch
        {
           Label5.Text = "<p>An error occured. The request could not be send.</p><p> Please make sure the data matches the requirements to be provided.</p>";
           Label5.Visible = true;
           Label5.ForeColor = System.Drawing.Color.Red;
        }

        ListView1.DataBind();
        conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (TextBox5.Text == "")
        {
            SqlDataSource1.SelectCommand = "Select * from [Patient] WHERE [AssignedDr]=\"" + user+ "\";";
            ListView1.DataBind();
        }
        else
        {
            SqlDataSource1.SelectCommand = "Select * from [Patient] WHERE [Lastname]=\"" + TextBox5.Text + "\" AND [AssignedDr]=\"" + user + "\";";
            ListView1.DataBind();
        }
       
    }
}