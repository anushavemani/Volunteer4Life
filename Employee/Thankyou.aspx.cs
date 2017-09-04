using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Employee_Thankyou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //All values and arrays stored in the Session object are retrieved here and then displayed in the corresponding controls on the page

  
        double totalamount=0;

        ArrayList namesList = new ArrayList();
        ArrayList amountList = new ArrayList();

        if (Session["Totalamount"] != null)
        { totalamount = Convert.ToDouble(Session["Totalamount"]); }

        if (Session["ActivityNames"] != null)
        { namesList = (ArrayList)(Session["ActivityNames"]); }

        if (Session ["Donation"] != null)
        { amountList = (ArrayList)(Session["Donation"]); }
      
        overallAmountLabel.Text = totalamount.ToString("C2");

        int i;

        for (i = 0; i < namesList.Count; i++)
        {
            if (namesList[i] !=null)
                amountListBox.Items.Add(namesList[i] + " : " + amountList[i].ToString());
        }
    }
    
}