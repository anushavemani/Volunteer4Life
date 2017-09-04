using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Home : System.Web.UI.Page
{   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void userLogin_LoggedIn(object sender, EventArgs e)
    {
        {
            //Checking the role and redirecting to specific pages
            if (Roles.IsUserInRole(userLogin.UserName, "Admin"))
                Response.Redirect("~/Admin/Activitydetails.aspx");
            else if (Roles.IsUserInRole(userLogin.UserName, "Employee"))
                Response.Redirect("~/Employee/ActivityList.aspx");
        }
    }
}