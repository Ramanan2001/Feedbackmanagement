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
    public partial class StaffStudentDetails : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            BindGridView();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }


        private void BindGridView()
        {
            DataTable dt = GetStaffData();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


       

        private DataTable GetStaffData()
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT  * from StudentRegistration where Timing ='" + DropDownList1.SelectedItem + "", con))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(dt);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            return dt;
        }

    }
}