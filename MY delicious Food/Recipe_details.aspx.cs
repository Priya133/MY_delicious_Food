using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Recipe_details : System.Web.UI.Page
{
     SqlConnection conn = null;
    SqlCommand cmd = null;
    string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mykey"]==null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            BindDataList();
        }

    }

    protected void BindDataList()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);

        con.Open();

        SqlCommand command = new SqlCommand("SELECT * from recipes where recipe_id=" + Request.QueryString["respid"], con);
        SqlDataAdapter da = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();
        con.Close();

    }




    protected void like(object sender, EventArgs e)
    {

       
        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        
        DataListItem dl = ((ImageButton)sender).NamingContainer as DataListItem;
        string aa = ((Label)dl.FindControl("Label1")).Text;
        
        int like1= Convert.ToInt32(((Label)dl.FindControl("Label5")).Text);
         
        int lik = like1 + 1;



      
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from recipes where like_by=@username1 ", conn);
        cmd.Parameters.AddWithValue("@username1", Session["mykey"].ToString());
       
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            
            Response.Write("<script> alert ('you have already liked it'); </script>");
        }
        else
        {
            SqlCommand cmd1 = new SqlCommand("update recipes set Likes=@lik, like_by=@likby where recipe_id=@recid", con);
        cmd1.Parameters.AddWithValue("@lik", lik);
        cmd1.Parameters.AddWithValue("@likby", Session["mykey"].ToString());

        cmd1.Parameters.AddWithValue("@recid", aa);
        con.Open();
        cmd1.ExecuteNonQuery();


        con.Close();
        BindDataList();
        }


      conn.Close();
        dr.Close();


    }


    protected void comment(object sender, EventArgs e)
    {
        Label6.Visible = true;
        TextBox1.Visible = true;
        Button1.Visible = true;

        DataList2.Visible = true;

        DataListItem dl = (( Button)sender).NamingContainer as DataListItem;
        Session["recp_id"]= ((Label)dl.FindControl("Label1")).Text;
      
            BindDataList1();
       
    }

    protected void BindDataList1()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);

        con.Open();

        SqlCommand command = new SqlCommand("SELECT * from cmt where rsp_id=" + Session["recp_id"].ToString(), con);
        SqlDataAdapter da = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList2.DataSource = dt;
        DataList2.DataBind();
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        conn = new SqlConnection(str);
        cmd = new SqlCommand("insert into cmt values(@rsp_id,@comment,@cmtby,@cmtid,@cmtimg)", conn);

        cmd.Parameters.AddWithValue("@rsp_id", Session["recp_id"]);
        cmd.Parameters.AddWithValue("@comment", TextBox1.Text);
        cmd.Parameters.AddWithValue("@cmtby", Session["mykey"].ToString());
        cmd.Parameters.AddWithValue("@cmtid", Session["a"]);
        cmd.Parameters.AddWithValue("@cmtimg", Session["img"]);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        BindDataList1();

    }
}