using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Feedback
{
    public partial class FBStaff : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            using (SqlCommand cmd = new SqlCommand("CheckUserLogin", con))
            {
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());

                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    
                    Response.Write("<script>alert('Login successful');</script>");
                    Response.Redirect("staffHome.aspx");
                }
                else
                {
                    
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
                con.Close();
            }


            
        }
    }
}