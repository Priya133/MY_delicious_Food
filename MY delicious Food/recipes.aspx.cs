using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class recipes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void myclick(object sender, EventArgs e)
    {


         DataListItem dl = ((Button)sender) .NamingContainer as DataListItem;
        string aa = ((Label)dl.FindControl("Label1")).Text;
               
                Response.Redirect("Recipe_details.aspx?respid=" + aa.ToString());




           


    }
}