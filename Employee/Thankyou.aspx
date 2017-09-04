<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Thankyou.aspx.cs" Inherits="Employee_Thankyou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">
    <p style="font-size: x-large; text-align: right">
        <asp:LoginStatus ID="LoginStatus1" runat="server" style="font-size: large" />
    </p>
    <p style="font-size: x-large; text-align: center">
        <strong>Activity Donation Report</strong></p>
    <table style="width: 800px">
        <tr>
            <td style="width: 399px">Amount Donated till now:</td>
            <td style="width: 399px">
                <asp:Label ID="overallAmountLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-decoration: underline"><strong>Donations for Various Activities&nbsp;</strong></td>
        </tr>
        <tr>
            <td colspan="2">Activity : Donation Amount<br />
                <asp:ListBox ID="amountListBox" runat="server" Height="211px" Width="293px"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td style="width: 399px">&nbsp;</td>
            <td style="width: 399px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 399px">&nbsp;</td>
            <td style="width: 399px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BottomContentPlaceHolder" Runat="Server">
</asp:Content>

