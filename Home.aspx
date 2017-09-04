<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">
    <table>
        <tr>
            <td style="width: 339px">
                <asp:Login ID="userLogin" runat="server" OnLoggedIn="userLogin_LoggedIn" Width="273px" Height="292px" style="margin-right: 3px">
    </asp:Login>
            </td>
            <td style="width: 419px">

                <strong><span style="text-decoration: underline">Test Credentials<br />
                </span></strong><span style="text-decoration: underline"><em>Role: Employee</em></span><br />
                User Name: anusha&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password :anusha*<em><br />
                <span style="text-decoration: underline">Role: Admin</span></em><br />
                User Name: vemani&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password : vemani*</td>
        </tr>
   
    
         </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BottomContentPlaceHolder" Runat="Server">
    <p>
        If you are a New User, Please Register&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="registerHyperLink" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

