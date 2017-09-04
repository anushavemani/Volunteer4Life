using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void employeeCreateUserWizard_CreatedUser(object sender, EventArgs e)
    {
        //Adding the registered user directly to Employee role
        string[] userRole = Roles.GetRolesForUser(employeeCreateUserWizard.UserName);
        Roles.AddUserToRole(employeeCreateUserWizard.UserName, "Employee");

    }
}