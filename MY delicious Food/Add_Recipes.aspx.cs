using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;



public partial class Add_Recipes : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlCommand cmd = null;
    string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mykey"] == null )
        {
            Response.Redirect("login.aspx");
        }
        

        if (Page.IsPostBack == false)
        {

            BindDropdowns();
        }


        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from registration where username=@username1 and type=@typ", conn);
        cmd.Parameters.AddWithValue("@username1", Session["mykey"]);
        cmd.Parameters.AddWithValue("@typ", "Member");
        
        


        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            Label2.Text = "Welcome " + Session["mykey"].ToString();
           
            Session["a"] = dr["Membership_Id"].ToString();
            string aa = dr["user_img"].ToString();
            Session["img"] = dr["user_img"].ToString();
            Image1.ImageUrl = "~/user_img/" + aa;
          
        }
    }

    protected void BindDropdowns()
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter adp = new SqlDataAdapter("select * from recipe_type", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList1.DataTextField = "type";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataSource = ds;
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));

    }
    protected void loginbtn_submit_Click(object sender, EventArgs e)
    {
        HtmlTextWriterTag.Body.ToString();
        
       

        string filepath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filepath);
        FileUpload1.SaveAs(Server.MapPath("recipe_img/" + filename));
        int lik=0;
         string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        conn = new SqlConnection(str);
        cmd = new SqlCommand("insert into recipes values(@typ,@ub,@memid,@memimg,@rname,@rimg,@rvid,@ingt,@mk,@bs,@lk,@cmt,@tym)", conn);

        cmd.Parameters.AddWithValue("@typ",DropDownList1.SelectedValue );
        cmd.Parameters.AddWithValue("@ub",Session["mykey"].ToString());
        cmd.Parameters.AddWithValue("@memid",Session["a"].ToString() );
        cmd.Parameters.AddWithValue("@memimg",Session["img"].ToString());

        cmd.Parameters.AddWithValue("@rname",TextBox5.Text);
         cmd.Parameters.AddWithValue("@rimg",filename );
        cmd.Parameters.AddWithValue("@rvid",TextBox1.Text);
         cmd.Parameters.AddWithValue("@ingt",TextBox2.Text);
        cmd.Parameters.AddWithValue("@mk",TextBox3.Text );
        cmd.Parameters.AddWithValue("@bs", TextBox4.Text);
         cmd.Parameters.AddWithValue("@lk",lik );
         cmd.Parameters.AddWithValue("@cmt","" );
        cmd.Parameters.AddWithValue("@tym", DateTime.Now.Date);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }
}