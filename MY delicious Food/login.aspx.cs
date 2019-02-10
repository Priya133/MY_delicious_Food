using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                login_uname.Text = Request.Cookies["UserName"].Value;
                login_pwd.Attributes["value"] = Request.Cookies["Password"].Value;
            }
        }
    }

    protected void loginbtn_submit_Click(object sender, EventArgs e)
    {

        if (login_uname.Text == "admin" && login_pwd.Text == "admin")
        {
            Session["mykey"] = login_uname.Text;
            Response.Redirect("Admin_home.aspx");
        }
        else
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddHours(1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddHours(1); ;
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
            }
            Response.Cookies["UserName"].Value = login_uname.Text.Trim();
            Response.Cookies["Password"].Value = login_pwd.Text.Trim();

            if (DropDownList1.SelectedItem.Text == "Join Membership")
            {
                string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from registration where username=@username1 and pwd=@pwd and type=@typ", conn);
                cmd.Parameters.AddWithValue("@username1", login_uname.Text);
                cmd.Parameters.AddWithValue("@pwd", login_pwd.Text);
                cmd.Parameters.AddWithValue("@typ", "NotaMember");
               
               
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    Session["a"] = dr["name"].ToString();
                    Session["type"] = dr["type"].ToString();
                    Session["mykey"] = login_uname.Text;
                    Response.Redirect("Payment_Member.aspx");
                }
                else
                {
                    Response.Write("<script> alert ('Invalid User'); </script>");

                }
            }

            else if (DropDownList1.SelectedItem.Text == "Already A Member")
            {
                string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from registration where username=@username1 and pwd=@pwd and type=@typ", conn);
                cmd.Parameters.AddWithValue("@username1", login_uname.Text);
                cmd.Parameters.AddWithValue("@pwd", login_pwd.Text);
                cmd.Parameters.AddWithValue("@typ", "Member");
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    Session["a"] = dr["name"].ToString();

                    Session["mykey"] = login_uname.Text;
                    Response.Redirect("Add_Recipes.aspx");
                }
                else
                {
                    Response.Write("<script> alert ('you are not member with us'); </script>");

                }
            }
            else
            {
                string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from registration where username=@username1 and pwd=@pwd  ", conn);
                cmd.Parameters.AddWithValue("@username1", login_uname.Text);
                cmd.Parameters.AddWithValue("@pwd", login_pwd.Text);
               
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    Session["a"] = dr["name"].ToString();

                    Session["mykey"] = login_uname.Text;
                    Response.Redirect("All_Recipes.aspx");
                }
                else
                {
                    Response.Write("<script> alert ('Invalid User'); </script>");

                }
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}