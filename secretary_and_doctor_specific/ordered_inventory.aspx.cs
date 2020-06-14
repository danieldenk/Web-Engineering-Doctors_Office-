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
 * Here at this page you can make orders of medical equipment 
 */
public partial class doctor_specific_ordered_inventory : System.Web.UI.Page
{
    System.Security.Principal.IPrincipal user = System.Web.HttpContext.Current.User;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox4.Text = user.Identity.Name.ToString();

       if (user.IsInRole("admin") || user.IsInRole("secretary"))
       {
         SqlDataSource1.SelectCommand = "SELECT * FROM [inventory];";
         GridView1.DataBind();
       }
       else
       {
           SqlDataSource1.SelectCommand = "SELECT * FROM [inventory] WHERE [ORDERER] = \""+user.Identity.Name.ToString()+"\";";
           GridView1.DataBind();
       }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringAccess"].ToString();
        conn.Open();
        OleDbCommand command = new OleDbCommand();

        
        command.CommandText = "Insert into [inventory](Item, Amount, Reason, Orderer) values(@material, @amt,@reason,@ord);";
        command.Parameters.AddWithValue("@material", TextBox1.Text);
        command.Parameters.AddWithValue("@amt", TextBox2.Text);
        command.Parameters.AddWithValue("@reason", TextBox3.Text);
        command.Parameters.AddWithValue("@ord", TextBox4.Text);
        command.Connection = conn;

        try
        {
            command.ExecuteNonQuery();
       
            Label1.Text = "Request was succesfully sent!";
            Label1.Visible = true;

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        catch
        {
            Label1.Text = "<p>An error occured. The request could not be send.</p><p> Please make sure the data matches the requirements to be provided.</p>";
            Label1.Visible = true;
            Label1.ForeColor = System.Drawing.Color.Red;
        }

        conn.Close();
        GridView1.DataBind();
    }



    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //SqlDataSource1.DeleteCommand = "DELETE FROM [ORDERS] WHERE ORDERID = @id";

       

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowIndex == GridView1.SelectedIndex)
            {
                //row.RowIndex gives the current row nr
                SqlDataSource1.DeleteCommand = "DELETE FROM [INVENTORY] WHERE ORDERID = "+row.Cells[1].Text+";";
                SqlDataSource1.DataBind();
                SqlDataSource1.Delete();
                GridView1.DataBind();
                Label1.Text = "The order was successfully removed!";
                Label1.Visible = true;
            }
        }
    }
}