using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.IO;

public partial class Payment_Member : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlCommand cmd = null;

    SqlDataReader drcurrent = null;

    protected void Page_Load(object sender, EventArgs e)
    {



        if (Session["mykey"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Label2.Text = Convert.ToString(Session["mykey"]);
        }


       
        for (int i = 2012; i <= 2020; i++)
        {
            DropDownList3.Items.Add(i.ToString());
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string expire = DropDownList2.SelectedItem.Text + "-" + DropDownList3.SelectedItem.Text;
        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        conn = new SqlConnection(str);
        cmd = new SqlCommand("insert into payment values(@un,@mt,@a,@pdt,@ct,@cdno,@chn,@exp)", conn);

        cmd.Parameters.AddWithValue("@un", Label2.Text);
        cmd.Parameters.AddWithValue("@mt",RadioButtonList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@a",packageprice.Text);
        cmd.Parameters.AddWithValue("@pdt",DateTime.Now);
       cmd.Parameters.AddWithValue("@ct", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@cdno", cardnum.Text);
        cmd.Parameters.AddWithValue("@chn", holdername.Text);
        cmd.Parameters.AddWithValue("@exp", expire);


        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd1 = new SqlCommand("update registration set type=@typ,mem_type=@memtyp where username=@un ", con);
        cmd1.Parameters.AddWithValue("@un", Session["mykey"].ToString());
        cmd1.Parameters.AddWithValue("@typ","Member");
        cmd1.Parameters.AddWithValue("@memtyp",RadioButtonList1.SelectedItem.Text);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();

       Response.Write("<script>alert('Payment made...')</script>");

        



    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedItem.Text == "Gold")
        {
            Label3.Text = "Total Package Price: Membership For 1 Year";
            packageprice.Text = "2000.00";
        }
        else if (RadioButtonList1.SelectedItem.Text == "Platinum")
        {
            Label3.Text = "Total Package Price: Membership For 6 Months";
            packageprice.Text = "1000.00";
        }
        else

        {
            Label3.Text = "Total Package Price: Membership For 3 Months";
            packageprice.Text = "500.00";
        }
    }
}