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
    public partial class StaffRegist : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                CourseNamesDropdown();
            }

        }
        private void CourseNamesDropdown()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    string query = "SELECT CourseID, CourseName FROM Courses";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            DropDownList2.DataTextField = "CourseName";
                            DropDownList2.DataValueField = "CourseID";
                            
                            DropDownList2.DataSource = reader;
                            DropDownList2.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {


            if (AreAllFieldsFilled())
            {
                if (checkMemberExists())
                {
                    Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
                }
                else
                {
                    signUpNewMember();
                   
                }
            }
            else
            {
                Response.Write("<script>alert('Please fill in all the fields.');</script>");
            }
        }






            bool checkMemberExists()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from StaffRegistration where UserID='" + TextBox7.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                    return false;
                }
            }

        void signUpNewMember()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    SqlCommand cmd = new SqlCommand("InsertStaffRegistration", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();

                    cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@LastName", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@DateOfBirth", DateTime.Parse(TextBox2.Text));
                    cmd.Parameters.AddWithValue("@Contact", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@CourseName", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@Pincode", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@UserID", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@Password", TextBox8.Text);

                    int x = cmd.ExecuteNonQuery();
                    if (x > 0)
                    {
                        Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }


        bool AreAllFieldsFilled()
        {

            if (string.IsNullOrWhiteSpace(TextBox1.Text) ||
                string.IsNullOrWhiteSpace(TextBox2.Text) ||
                string.IsNullOrWhiteSpace(TextBox3.Text) ||
                string.IsNullOrWhiteSpace(TextBox4.Text) ||
                string.IsNullOrWhiteSpace(TextBox6.Text) ||
                string.IsNullOrWhiteSpace(TextBox7.Text) ||
                string.IsNullOrWhiteSpace(TextBox8.Text) ||
                string.IsNullOrWhiteSpace(DropDownList1.SelectedValue) ||
                string.IsNullOrWhiteSpace(DropDownList2.SelectedValue) ||
                string.IsNullOrWhiteSpace(TextBox5.Text))
            {
                return false;
            }

            return true;
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
                