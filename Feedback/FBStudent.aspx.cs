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
    public partial class FBStudent : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from StudentRegistration where UserID='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        if (AreAllFieldsFilled())
                        {
                            Response.Write("<script>alert('Login Successfull');</script>");
                            Session["@FirstName"] = dr.GetValue(1).ToString();
                            Session["role"] = "Student";
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid credentials');</script>");
                        }
                       Response.Redirect("StudHome.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Invalid credentials');</script>");
            }
            
        }

        bool AreAllFieldsFilled()
        {

            if (string.IsNullOrWhiteSpace(TextBox1.Text) ||
                string.IsNullOrWhiteSpace(TextBox2.Text))
                
            {
                return false;
            }

            return true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }
    }
}