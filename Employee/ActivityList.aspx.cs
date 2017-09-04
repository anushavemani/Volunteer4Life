using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_ActivityList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Inserting Empty Item 
            activityDropDownList.AppendDataBoundItems = true;
            activityDropDownList.Items.Insert(0, new ListItem(String.Empty, String.Empty));
            activityDropDownList.SelectedIndex = 0;
        }
    }

    protected void activityDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["activityid"] = activityDropDownList.SelectedItem.Value;
        Session["activityname"] = activityDropDownList.SelectedItem.Text;
    }
}
