using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Employee_Donate : System.Web.UI.Page
{
    //A field variable to keep track of total amount donated by the user
    double totalamount;
  
    //Two arrayLists to store activity names and donation amounts for each activity
    ArrayList activityNames = new ArrayList();
    ArrayList donationAmount = new ArrayList();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        // getting values into labels from sessions created in previous page
        firstnameLabel.Text = Session["firstname"].ToString();
        lastnameLabel.Text = Session["lastname"].ToString();
        emailLabel.Text = Session["email"].ToString();
        nameLabel.Text = Session["Activity"].ToString();
        if (IsPostBack && Session["TotalAmount"] != null)
        { totalamount = Convert.ToDouble(Session["TotalAmount"]); }

        if (IsPostBack && Session["ActivityNames"] != null)
        { activityNames = (ArrayList)(Session["ActivityNames"]); }

        if (IsPostBack && Session["Donation"] != null)
        { donationAmount = (ArrayList)(Session["Donation"]); }
   }
    
    protected void reconfirmButton_Click(object sender, EventArgs e)
{
        //exception handling
         try
        {
            double amount;  //stores the donation for the present activity
            amount = Convert.ToDouble(donationTextBox.Text);
            amountLabel.Text = amount.ToString("C2");

            //Add Activity name and Amount of the current User to the arraylists
            activityNames.Add(nameLabel.Text);
            donationAmount.Add(amount);

            //Store the arraylists in the Session object
            Session["ActivityNames"] = activityNames;
            Session["Donation"] = donationAmount;


            //***Update total Amount****

            //Add the current amount
            totalamount += amount;
            //Save the updated total amount in the Session state
            Session["Totalamount"] = totalamount;
        }
        catch
        { 
            amountLabel.Text="Data processing error.";
            amountLabel.ForeColor = System.Drawing.Color.Red;
        
        }
}
    protected void resetButton_Click(object sender, EventArgs e)
    {
       //Resetting all the fields
        cardRadioButtonList.SelectedIndex = -1;
        cardTextBox.Text = "";
        expiryTextBox.Text = "";
        cvvTextBox.Text = "";
        donationTextBox.Text = "";
        billingTextBox.Text = "";
        amountLabel.Text = "";

    }
}
