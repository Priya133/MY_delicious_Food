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

public partial class About_us : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlCommand cmd = null;
    string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
  

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        conn = new SqlConnection(str);
        cmd = new SqlCommand("insert into feedback values(@h,@img,@dsc,@ddsc)", conn);

        cmd.Parameters.AddWithValue("@h", TextBox1.Text);
        cmd.Parameters.AddWithValue("@img", TextBox2.Text);
        cmd.Parameters.AddWithValue("@dsc", TextBox3.Text);
        cmd.Parameters.AddWithValue("@ddsc", TextBox4.Text);
      
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }
}