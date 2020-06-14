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
 * In this page you can make changes to your personal file,
 * changing master data like e.g. the address, tel nr, mail or the doctor
 */
public partial class patient_specific_contact_information : System.Web.UI.Page
{        

    String user = System.Web.HttpContext.Current.User.Identity.Name.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (System.Web.HttpContext.Current.User.IsInRole("admin") || System.Web.HttpContext.Current.User.IsInRole("secretary"))
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM [Patient];";
            TextBox5.Enabled = true;
        }
        else
        {
            TextBox5.Enabled = false ;
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringAccess"].ToString();
            conn.Open();
            OleDbCommand command = new OleDbCommand("Select * FROM [PATIENT];",conn);
            TextBox5.Text = user;
        
            
        //command.CommandText = "Select * FROM [PATIENT];";

        OleDbDataReader data_reader = command.ExecuteReader();

        
            data_reader.Read();
            TextBox1.Text = data_reader["Address"].ToString();
            TextBox2.Text = data_reader["Tel"].ToString();
            TextBox3.Text = data_reader["Mail"].ToString();
            TextBox4.Text = data_reader["AssignedDr"].ToString();

        
       

            SqlDataSource1.SelectCommand = "SELECT * FROM [Patient] WHERE [Username]=\"" + user + "\";";
            conn.Close();
        }
        DataList1.DataBind();
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

        TextBox4.Text = row.Cells[1].Text;
        TextBox4.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringAccess"].ToString();
        conn.Open();
        OleDbCommand command = new OleDbCommand();
        command.Connection = conn;
        command.CommandText = "UPDATE [PATIENT] SET [Address]=\"" + TextBox1.Text + "\", [Tel]=\"" + TextBox2.Text + "\", [Mail]=\"" + TextBox3.Text + "\", [AssignedDr]=\"" + TextBox4.Text + "\" WHERE [username]=\"" + TextBox5.Text + "\";";
        command.ExecuteNonQuery();    
        conn.Close();
        
    }
}