<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Enroll.aspx.cs" Inherits="Employee_Enroll"  Theme ="Mainproject"  StylesheetTheme="Mainproject"%>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">
    <table style="width: 800px; height: 1519px;">
        <tr>
            <td colspan="4" style="height: 110px; text-align: right; color: #CC0099; font-size: x-large">
                <asp:LoginStatus ID="LoginStatus" runat="server" LogoutPageUrl="~/Home.aspx" style="font-size: large" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 110px; text-align: center; color: #CC0099; font-size: x-large"><strong>Enrollment Form</strong></td>
        </tr>
        <tr>
            <td style="height: 110px; text-align: left; color: #000000; ">Activity Id:</td>
            <td style="height: 110px; text-align: left; color: #CC0099; font-size: x-large">
                <asp:Label ID="activityIdLabel" runat="server" style="color: #000000; font-size: large"></asp:Label>
            </td>
            <td style="height: 110px; text-align: center; color: #CC0099; font-size: x-large">&nbsp;</td>
            <td style="height: 110px; text-align: center; color: #CC0099; font-size: x-large">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 110px; text-align: left; color: #000000; ">Activity Name:</td>
            <td style="height: 110px; text-align: left; color: #CC0099; font-size: x-large">
                <asp:Label ID="nameLabel" runat="server" style="color: #000000; font-size: large"></asp:Label>
            </td>
            <td style="height: 110px; text-align: center; color: #CC0099; font-size: x-large">&nbsp;</td>
            <td style="height: 110px; text-align: center; color: #CC0099; font-size: x-large">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 315px; height: 15px;">Enter your First Name: </td>
           <td style="width: 225px; height: 15px;">
                <asp:TextBox ID="firstnameTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 225px; height: 15px;">
                &nbsp;</td>
            <td style="width: 266px; height: 15px;"></td>
        </tr>
        <tr>
            <td style="width: 315px; height: 120px;">Enter your Last Name:</td>
            <td style="width: 225px; height: 120px;">
                <asp:TextBox ID="lastnameTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 225px; height: 120px;">
                &nbsp;</td>
            <td style="width: 266px; height: 120px;"></td>
        </tr>
        <tr>
            <td style="width: 315px; height: 106px">Enter your Email-id:</td>
            <td style="width: 225px; height: 106px">
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 225px; height: 106px">
                &nbsp;</td>
            <td style="width: 266px; height: 106px"></td>
        </tr>
        <tr>
            <td style="height: 376px; width: 315px">Enter your DOB:</td>
            <td style="height: 376px; width: 225px">
                <asp:TextBox ID="calendarTextBox" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
         
           <asp:Calendar ID="dobCalendar" runat="server" Height="268px" Width="262px" DayNameFormat="Shortest" ShowGridLines="True" OnSelectionChanged="dobCalendar_SelectionChanged" SkinID="calendarskin"></asp:Calendar>
            </td>
            <td style="height: 376px; width: 225px">
&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td style="height: 376px; width: 266px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 315px; height: 124px;">Enter your Address:</td>
            <td style="width: 225px; height: 124px;">
                <asp:TextBox ID="addressTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 225px; height: 124px;">
                &nbsp;</td>
            <td style="width: 266px; height: 124px;"></td>
        </tr>
        <tr>
            <td style="height: 225px; width: 315px">Enter your Phone Number:(999)999-9999</td>
            <td style="height: 225px; width: 124px; text-align: center;">
                <asp:TextBox ID="phoneTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="height: 225px; width: 225px">
                &nbsp;</td>
            <td style="height: 225px; width: 124px">
                <asp:RegularExpressionValidator ID="phoneRegularExpressionValidator1" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="Please Enter your Phone Number in the Specified Format" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 315px; height: 86px;">
                If you want to donate for the activity , please click Donate&nbsp; button or else click Confirm to proceed</td>
            <td style="width: 225px; height: 86px; text-align: left;">
                <asp:Button ID="donateButton" runat="server" Text="Donate" OnClick="donateButton_Click" SkinID="buttonskin"/>
            </td>
            <td style="width: 225px; height: 86px;">
                <asp:Button ID="confirmButton" runat="server" Text="Confirm" OnClick="confirmButton_Click" SkinID="buttonskin"/>
            </td>
            <td style="width: 266px; height: 86px;">
                <asp:Button ID="resetButton" runat="server" Text="Reset" OnClick="resetButton_Click" SkinID="buttonskin" />
            </td>
        </tr>
        <tr>
            <td style="height: 169px; text-align: center;" colspan="4">
                <asp:Label ID="errorLabel" runat="server" style="color: #FF3300"></asp:Label>
            </td>
        </tr>
    </table>
&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BottomContentPlaceHolder" Runat="Server">
</asp:Content>

