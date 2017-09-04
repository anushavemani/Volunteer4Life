using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Confirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        infoLabel.Text =( "Thanks" +" "+Request.QueryString["Firstname"]+" "+Request.QueryString["Lastname"] +" "+"for Enrolling to"+" "+Request.QueryString["Activityname"]);
    }
}