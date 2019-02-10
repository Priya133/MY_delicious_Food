using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tips_Tricks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void myclick(object sender, EventArgs e)
    {
        var lb = (Button)sender;
        //var lb = (LinkButton)sender;
        var row = (GridViewRow)lb.NamingContainer;
        if (row != null)
        {
            var lblRequestor = row.FindControl("Label4") as Label;

            if (lblRequestor != null)
            {
                //Get values
                string aa = lblRequestor.Text;
                Response.Redirect("tips_viewmore.aspx?id=" + aa.ToString());




            }

        }
    }
}