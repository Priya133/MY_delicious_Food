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

public partial class Admin_add_cookig_tips : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlCommand cmd = null;
    string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginbtn_submit_Click(object sender, EventArgs e)
    {
        string filepath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filepath);
        FileUpload1.SaveAs(Server.MapPath("tips/" + filename));
        int lik = 0;
        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        conn = new SqlConnection(str);
        cmd = new SqlCommand("insert into tips values(@h,@img,@dsc,@ddsc,@p)", conn);

        cmd.Parameters.AddWithValue("@h", TextBox5.Text);
        cmd.Parameters.AddWithValue("@img", filename);
        cmd.Parameters.AddWithValue("@dsc", TextBox2.Text);
        cmd.Parameters.AddWithValue("@ddsc", TextBox3.Text);
        cmd.Parameters.AddWithValue("@p", TextBox5.Text);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}