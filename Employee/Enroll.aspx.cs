using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Employee_Enroll : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        //Getting values into labels from the sessions created in previous page
        activityIdLabel.Text = Session["activityid"].ToString();
        nameLabel.Text = Session["activityname"].ToString();
        //Creating session variables and storing values
        Session["firstname"] = firstnameTextBox.Text;
        Session["lastname"] = lastnameTextBox.Text;
        Session["email"] = emailTextBox.Text;
        Session["Activity"] = nameLabel.Text;
    }

protected void dobCalendar_SelectionChanged(object sender, EventArgs e)
{
    // Storing selected date from the calendar into textbox
    calendarTextBox.Text = dobCalendar.SelectedDate.ToShortDateString();
}

protected void confirmButton_Click(object sender, EventArgs e)
{
    //Exception Handling
    try
    {
        if (firstnameTextBox.Text == "" && lastnameTextBox.Text== "" && emailTextBox.Text == "" && calendarTextBox.Text== "" && addressTextBox.Text== "" && phoneTextBox.Text == "")
            errorLabel.Text = "Please enter the information";

        else
        {
            if (firstnameTextBox.Text != "" && Regex.IsMatch(firstnameTextBox.Text, "^[a-zA-Z\u0020]{1,40}$"))
            {
                if (lastnameTextBox.Text != "" && Regex.IsMatch(lastnameTextBox.Text, "^[a-zA-Z\u0020]{1,40}$"))
                {

                    if (emailTextBox.Text != "")
                    {
                        if (calendarTextBox.Text != "")
                        {
                            if (addressTextBox.Text != "")
                            {
                                if (phoneTextBox.Text != "")
                                {
                                    errorLabel.Text = "";
                                    string url = "Confirmation.aspx?";
                                    url += "Firstname=" + Server.UrlEncode(firstnameTextBox.Text) + "&";
                                    url += "Lastname=" + Server.UrlEncode(lastnameTextBox.Text) + "&";
                                    url += "Activityname=" + nameLabel.Text;
                                    Response.Redirect(url);
                                }
                                else
                                {
                                    errorLabel.Text = "Please Enter Phone Number";
                                }
                            }
                            else
                            {
                                errorLabel.Text = "Please Enter Address";
                            }

                        }
                        else
                        {

                            errorLabel.Text = "Please Select the Date";
                        }
                    }
                    else
                    {

                        errorLabel.Text = " Please Enter Email-Id";
                    }
                }
                else
                {
                    errorLabel.Text = " Last Name cannot be NULL and can only have alphabets, space and can be maximum of 40 chars";
                }
            }
            else
            {
                errorLabel.Text = "First Name cannot be NULL and can only have alphabets, space and can be maximum of 40 chars";
            }
        }
    }
    catch
    {
        errorLabel.Text = " Please Enter the relevant Information";
    }
    
}
protected void resetButton_Click(object sender, EventArgs e)
{
    // Resetting all the fields
   
    firstnameTextBox.Text = "";
    lastnameTextBox.Text = "";
    emailTextBox.Text = "";
    dobCalendar.SelectedDates.Clear();
    addressTextBox.Text = "";
    phoneTextBox.Text = "";
}
protected void donateButton_Click(object sender, EventArgs e)
{
    //exception handling
    try
    {
        if (firstnameTextBox.Text == "" && lastnameTextBox.Text == "" && emailTextBox.Text == "" && calendarTextBox.Text == "" && addressTextBox.Text == "" && phoneTextBox.Text == "")
            errorLabel.Text = "Please enter the information";

        else
        {
            if (firstnameTextBox.Text != "" && Regex.IsMatch(firstnameTextBox.Text, "^[a-zA-Z\u0020]{1,40}$"))
            {
                if (lastnameTextBox.Text != "" && Regex.IsMatch(lastnameTextBox.Text, "^[a-zA-Z\u0020]{1,40}$"))
                {

                    if (emailTextBox.Text != "")
                    {
                        if (calendarTextBox.Text != "")
                        {
                            if (addressTextBox.Text != "")
                            {
                                if (phoneTextBox.Text != "")
                                {
                                    errorLabel.Text = "";
                                    Response.Redirect("Donate.aspx");
                                }
                                else
                                {
                                    errorLabel.Text = "Please Enter Phone Number";
                                }
                            }
                            else
                            {
                                errorLabel.Text = "Please Enter Address";
                            }

                        }
                        else
                        {

                            errorLabel.Text = "Please Select the Date";
                        }
                    }
                    else
                    {

                        errorLabel.Text = " Please Enter Email-Id";
                    }
                }
                else
                {
                    errorLabel.Text = " Last Name cannot be NULL and can only have alphabets, space and can be maximum of 40 chars";
                }
            }
            else
            {
                errorLabel.Text = "First Name cannot be NULL and can only have alphabets, space and can be maximum of 40 chars";
            }
        }
    }
    catch
    {
        errorLabel.Text = " Please Enter the relevant Information";
    }
    
}
}

    