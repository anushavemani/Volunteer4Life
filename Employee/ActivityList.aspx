<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="ActivityList.aspx.cs" Inherits="Employee_ActivityList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">
    <p style="text-align: right">
        <asp:LoginStatus ID="LoginStatus" runat="server" LogoutPageUrl="~/Home.aspx" />
</p>
<p style="margin-top: 0px">
    Please Select the Activity :<asp:DropDownList ID="activityDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ActivityName" DataValueField="ActivityId" OnSelectedIndexChanged="activityDropDownList_SelectedIndexChanged">
           
        </asp:DropDownList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Volunteer %>" SelectCommand="SELECT * FROM [Activities]"></asp:SqlDataSource>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select an item" ControlToValidate="activityDropDownList"></asp:RequiredFieldValidator>
</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Volunteer %>" SelectCommand="SELECT * FROM [Activities] WHERE ([ActivityId] = @ActivityId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="activityDropDownList" Name="ActivityId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ActivityId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" style="margin-right: 5px" Width="357px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ActivityId" HeaderText="ActivityId" InsertVisible="False" ReadOnly="True" SortExpression="ActivityId" />
                <asp:BoundField DataField="ActivityName" HeaderText="ActivityName" SortExpression="ActivityName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
                <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Date" SortExpression="Date" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="enrollButton" runat="server" Text="Enroll" PostBackUrl="~/Employee/Enroll.aspx" />
&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BottomContentPlaceHolder" Runat="Server">
</asp:Content>

