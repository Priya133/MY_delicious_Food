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


public partial class admin_add_recipe_types : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
       

        
    }
    protected void loginbtn_submit_Click(object sender, EventArgs e)
    {
       


        string filepath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filepath);
        FileUpload1.SaveAs(Server.MapPath("type/" + filename));
       
         string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        conn = new SqlConnection(str);
        cmd = new SqlCommand("insert into recipe_type values(@typ,@img,@dsc)", conn);

        cmd.Parameters.AddWithValue("@typ",login_uname.Text);
        cmd.Parameters.AddWithValue("@img",filename);
        cmd.Parameters.AddWithValue("@dsc", TextBox1.Text);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Write("<script>alert('Added Successfully')</script>");

       

    }
}