using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*
 * Thispage is displaying booked appointments for a user 
 */
public partial class secretary_and_doctor_specific_display_appointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (System.Web.HttpContext.Current.User.IsInRole("admin") || System.Web.HttpContext.Current.User.IsInRole("secretary"))
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM [TIMESLOTS] WHERE NOT [APPOINTMENTDATE] IS NULL";
            SqlDataSource1.DataBind();
            GridView1.DataBind();
        }
        else
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM [TIMESLOTS] WHERE PATIENT=\"" + System.Web.HttpContext.Current.User.Identity.Name.ToString()+ "\"";
            SqlDataSource1.DataBind();
            GridView1.DataBind();
        }
        if (GridView1.Rows.Count == 0)
        {
            Label1.Text = "There have no appointments been scheduled yet.";
        }
        else
        {
            Label1.Text = "";
        }
    }
}