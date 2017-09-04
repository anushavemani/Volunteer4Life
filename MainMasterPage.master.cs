//Name: Anusha Vemani
 //Project : Volunteer4Life
 //Date : 07/16/2017

using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainMasterPage : System.Web.UI.MasterPage
{

    protected void SiteMapPath_ItemCreated(object sender, SiteMapNodeItemEventArgs e)
    {
        //Removing Dummy root and Path Separator
        if (e.Item.ItemType == SiteMapNodeItemType.Root || (e.Item.ItemType == SiteMapNodeItemType.PathSeparator &&
            e.Item.ItemIndex == 1))
        {
            e.Item.Visible = false;
        }
    }
}
