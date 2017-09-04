<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Activitydetails.aspx.cs" Inherits="Admin_Activitydetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">
    <table style="text-align:right" align="right">
        <tr>
        <td>
            <asp:LoginStatus ID="LoginStatus" runat="server" LogoutPageUrl="~/Home.aspx" />

        </td>
            </tr>
    </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Volunteer %>" DeleteCommand="DELETE FROM [Activities] WHERE [ActivityId] = @ActivityId" InsertCommand="INSERT INTO Activities(ActivityId, ActivityName, Description, Venue, Date) VALUES (@ActivityId, @ActivityName, @Description, @Venue, @Date)" SelectCommand="SELECT * FROM [Activities] WHERE ([ActivityId] = @ActivityId)" UpdateCommand="UPDATE [Activities] SET [ActivityName] = @ActivityName, [Description] = @Description, [Venue] = @Venue, [Date] = @Date WHERE [ActivityId] = @ActivityId">
            <DeleteParameters>
                <asp:Parameter Name="ActivityId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ActivityId" />
                <asp:Parameter Name="ActivityName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Venue" Type="String" />
                <asp:Parameter Name="Date" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="activityDropDownList" Name="ActivityId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ActivityName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Venue" Type="String" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="ActivityId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    <br />
    <br />
    <br />
    <asp:DropDownList ID="activityDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="ActivityName" DataValueField="ActivityId">
    </asp:DropDownList>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Volunteer %>" DeleteCommand="DELETE FROM [Activities] WHERE [ActivityId] = @ActivityId" InsertCommand="INSERT INTO [Activities] ([ActivityId], [ActivityName], [Description], [Venue], [Date]) VALUES (@ActivityId, @ActivityName, @Description, @Venue, @Date)" SelectCommand="SELECT * FROM [Activities]" UpdateCommand="UPDATE [Activities] SET [ActivityName] = @ActivityName, [Description] = @Description, [Venue] = @Venue, [Date] = @Date WHERE [ActivityId] = @ActivityId">
        <DeleteParameters>
            <asp:Parameter Name="ActivityId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ActivityId" Type="Int32" />
            <asp:Parameter Name="ActivityName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Venue" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ActivityName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Venue" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="ActivityId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ActivityId" DataSourceID="SqlDataSource1" Height="50px" Width="563px">
        <Fields>
            <asp:BoundField DataField="ActivityId" HeaderText="Activity Id" ReadOnly="True" SortExpression="ActivityId" />
            <asp:BoundField DataField="ActivityName" HeaderText="Activity Name" SortExpression="ActivityName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
            <asp:TemplateField HeaderText="Date" SortExpression="Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Date", "{0:d}") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Date", "{0:d}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BottomContentPlaceHolder" Runat="Server">
</asp:Content>

