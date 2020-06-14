using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*
 * This is the page for scheduling an appointment with a doctor
 * -> Pick a valid date
 * -> Pick a Dr
 * -> Write down the problem you are facing
 * -> Book the appointment
 * 
 * Alternatively: cancel appointments that have been set for your name
 */
public partial class appointments_for_patient : System.Web.UI.Page
{
    String user = System.Web.HttpContext.Current.User.Identity.Name.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT * FROM [TIMESLOTS] WHERE [PATIENT]=\"" + user + "\"";
        SqlDataSource3.DataBind();
        GridView1.DataBind();
        if (Calendar1.SelectedDate < DateTime.Now)
        {
            Button1.Enabled = false;
            Label4.Text = "Please choose a valid date!";
        }
        else
        {
            Label4.Text = "The appointment you want to book is: \"" + Calendar1.SelectedDate.ToShortDateString() + " at " + DropDownList2.Text + "\"<br/>The appointment will be together with " + DropDownList1.Text;
            Button1.Enabled = true;
            if (System.Web.HttpContext.Current.User.IsInRole("admin")||System.Web.HttpContext.Current.User.IsInRole("secretary")){
            SqlDataSource3.SelectCommand = "SELECT * FROM [TIMESLOTS] WHERE NOT [APPOINTMENTDATE] IS NULL;";
            SqlDataSource3.DataBind();
            GridView1.DataBind();
            }

            else{
                SqlDataSource3.SelectCommand = "SELECT * FROM [TIMESLOTS] WHERE PATIENT=\""+user+"\"";
                SqlDataSource3.DataBind();
                GridView1.DataBind();
            }

            // Needed for the Drop Down List Times
            SqlDataSource2.SelectCommand = "SELECT [Timeslot] FROM [Timeslots] WHERE (([DoctorName] = ?) AND ([Patient] IS NULL) AND ([AppointmentDate] IS NULL))";
            SqlDataSource2.DataBind();
            DropDownList2.DataBind();
            GridView1.DataBind();
        }
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource2.InsertCommand = "INSERT INTO [TIMESLOTS] (Timeslot, Patient,Problems,DoctorName,AppointmentDate) VALUES(" + "\""+DropDownList2.Text + "\", \"" + user + "\", \"" + TextBox1.Text + "\",\"" + DropDownList1.Text + "\",\"" + Calendar1.SelectedDate.ToShortDateString() + "\");";
      
        SqlDataSource2.Insert();
        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowIndex == GridView1.SelectedIndex)
            {
                //row.RowIndex gives the current row nr
                SqlDataSource3.DeleteCommand = "DELETE FROM [TIMESLOTS] WHERE Timeslot =" +
                    "\"" + GridView1.Rows[row.RowIndex].Cells[2].Text + "\" AND " +
          "Patient = " + "\"" + GridView1.Rows[row.RowIndex].Cells[3].Text + "\" AND " +
          "DoctorName=" + "\"" + GridView1.Rows[row.RowIndex].Cells[5].Text + "\" AND " +
          "AppointmentDate=" + "\"" + GridView1.Rows[row.RowIndex].Cells[6].Text + "\";";

                SqlDataSource3.DataBind();
                SqlDataSource3.Delete();
               
                GridView1.DataBind();
                if (GridView1.Rows.Count == 0)
                {
                    Label4.Text = "You currently do not have any appointments.";
                }
                else
                {
                    Label4.Text = "The appointment was successfully canceled!";
                }

            }
        }
    }
}