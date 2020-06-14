using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*
 *Here you can inspect the treatment and medication plan by the doctor 
 */
public partial class patientfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = System.Web.HttpContext.Current.User.Identity.Name.ToString();
        if (System.Web.HttpContext.Current.User.IsInRole("admin") || System.Web.HttpContext.Current.User.IsInRole("secretary"))
        {
          SqlDataSource1.SelectCommand = "Select * from [Patient];";
        }
        else
        {
            SqlDataSource1.SelectCommand = "Select * from [Patient] Where [UserName]=\"" + user+"\";";
            //SqlDataSource1.SelectParameters["UserName"].DefaultValue = user;
        }
    }
}