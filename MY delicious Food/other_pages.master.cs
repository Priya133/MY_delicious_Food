﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class other_pages : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mykey"] == null)
        {
            ImageButton1.ImageUrl = "~/images/login-button.png";


        }
        else
        {
            Label1.Visible = true;
            ImageButton1.ImageUrl = "~/images/logout.png";
            Label1.Text = "Welcome " + Session["mykey"].ToString();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["mykey"] == null)
        {
            Response.Redirect("login.aspx");

        }
        else
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");

        }
    }
}
