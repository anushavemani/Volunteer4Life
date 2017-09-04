<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Donate.aspx.cs" Inherits="Employee_Donate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="4" style="font-size: x-large; color: #660066; text-align: right">
                <asp:LoginStatus ID="LoginStatus" runat="server" LogoutPageUrl="~/Home.aspx" style="font-size: large" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="font-size: x-large; color: #660066; text-align: center"><strong style="text-align: right">Donation Form&nbsp;&nbsp; </strong></td>
        </tr>
        <tr>
            <td style="width: 285px">Activity Name:</td>
            <td style="width: 122px">
                <asp:Label ID="nameLabel" runat="server"></asp:Label>
            </td>
            <td style="width: 127px">&nbsp;</td>
            <td style="width: 64px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 285px">First Name:</td>
            <td style="width: 122px">
                <asp:Label ID="firstnameLabel" runat="server"></asp:Label>
            </td>
            <td style="width: 127px">&nbsp;</td>
            <td style="width: 64px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 285px">Last Name:</td>
            <td style="width: 122px">
                <asp:Label ID="lastnameLabel" runat="server"></asp:Label>
            </td>
            <td style="width: 127px">&nbsp;</td>
            <td style="width: 64px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 285px">Email-Id:</td>
            <td style="width: 122px">
                <asp:Label ID="emailLabel" runat="server"></asp:Label>
            </td>
            <td style="width: 127px">&nbsp;</td>
            <td style="width: 64px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 285px">Select card type:</td>
            <td style="width: 122px">
                <asp:RadioButtonList ID="cardRadioButtonList" runat="server">
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td style="width: 127px">&nbsp;</td>
            <td style="width: 64px">
                <asp:RequiredFieldValidator ID="cardTypeRequiredFieldValidator" runat="server" ControlToValidate="cardRadioButtonList" ErrorMessage="Please Select Card Type"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">Enter your card number:<br />
                <br />
                (All card numbers start with a 4 and must have 16 digits)</td>
            <td style="width: 122px">
                <asp:TextBox ID="cardTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 127px">
                <asp:RegularExpressionValidator ID="cardnumberRegularExpressionValidator" runat="server" ControlToValidate="cardTextBox" ErrorMessage="Please Enter Card Number in specified format" ValidationExpression="^4[0-9]{12}(?:[0-9]{3})?$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 64px">
                <asp:RequiredFieldValidator ID="cardRequiredFieldValidator" runat="server" ControlToValidate="cardTextBox" ErrorMessage="Please Enter Card Number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px; height: 272px;">Enter the expiry date:<br />
                (MM/YY)</td>
            <td style="width: 122px; height: 272px;">
                <asp:TextBox ID="expiryTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 127px; height: 272px"></td>
            <td style="width: 64px; height: 272px">
                <asp:RequiredFieldValidator ID="expiryRequiredFieldValidator" runat="server" ControlToValidate="expiryTextBox" ErrorMessage="Please Enter Expiry Date"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">Enter CVV Number:<br />
                (3 digits)</td>
            <td style="width: 122px">
                <asp:TextBox ID="cvvTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 127px">
                <asp:RegularExpressionValidator ID="cvvRegularExpressionValidator" runat="server" ControlToValidate="cvvTextBox" ErrorMessage="Please Enter CVV in Specified Format" ValidationExpression="^[0-9]{3}$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 64px">
                <asp:RequiredFieldValidator ID="cvvRequiredFieldValidator" runat="server" ControlToValidate="cvvTextBox" ErrorMessage="Please Enter CVV Number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">Enter Donation Amount:</td>
            <td style="width: 122px">
                <asp:TextBox ID="donationTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 127px">&nbsp;</td>
            <td style="width: 64px">
                <asp:RequiredFieldValidator ID="donationRequiredFieldValidator" runat="server" ControlToValidate="donationTextBox" ErrorMessage="Please Enter Donation Amount"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">Enter Billing Address:</td>
            <td style="width: 122px">
                <asp:TextBox ID="billingTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 127px">&nbsp;</td>
            <td style="width: 64px">
                <asp:RequiredFieldValidator ID="billingRequiredFieldValidator" runat="server" ControlToValidate="billingTextBox" ErrorMessage="Please Enter Billing Address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">
                <asp:Button ID="reconfirmButton" runat="server" OnClick="reconfirmButton_Click" Text="Reconfirm" />
            </td>
            <td style="width: 122px">
                <asp:Button ID="submitButton" runat="server" PostBackUrl="~/Employee/Thankyou.aspx" Text="Submit" />
            </td>
            <td style="width: 127px">
                <asp:Button ID="resetButton" runat="server" Text="Reset" OnClick="resetButton_Click" />
            </td>
            <td style="width: 64px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 285px">Donation Amount:</td>
            <td style="width: 122px">
                <asp:Label ID="amountLabel" runat="server"></asp:Label>
            </td>
            <td style="width: 127px">&nbsp;</td>
            <td style="width: 64px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BottomContentPlaceHolder" Runat="Server">
</asp:Content>

