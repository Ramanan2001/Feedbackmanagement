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
    public partial class NewReg : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                PopulateStaffNamesDropdown();
                CourseNamesDropdown();
            }

        }

        private void PopulateStaffNamesDropdown()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    string query = "SELECT StaffID, CONCAT(FirstName, ' ', LastName) AS StaffName FROM StaffRegistration";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            DropDownList6.DataTextField = "StaffName";
                            DropDownList6.DataValueField = "StaffID";
                            DropDownList6.DataSource = reader;
                            DropDownList6.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
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
                SqlCommand cmd = new SqlCommand("SELECT * from StudentRegistration where UserID='" + TextBox7.Text.Trim() + "';", con);
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
                    using (SqlCommand cmd = new SqlCommand("InsertStudentRegistration", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        con.Open();

                        cmd.Parameters.AddWithValue("@FullName", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@DateOfBirth", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@FatherName", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@Contact", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedValue);
                        cmd.Parameters.AddWithValue("@Course", DropDownList2.SelectedValue);
                        cmd.Parameters.AddWithValue("@Pincode", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@Timing", DropDownList5.SelectedValue);
                        cmd.Parameters.AddWithValue("@StaffName", DropDownList6.SelectedValue);
                        cmd.Parameters.AddWithValue("@type", DropDownList3.Text);
                        cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@UserID", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@Password", TextBox8.Text);

                        int x = cmd.ExecuteNonQuery();

                        if (x > 0)
                        {
                            Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                            Response.Redirect("FBStudent.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('Error in registration');</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
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
                    string.IsNullOrWhiteSpace(DropDownList5.SelectedValue) ||
                    string.IsNullOrWhiteSpace(DropDownList6.SelectedValue) ||
                    string.IsNullOrWhiteSpace(DropDownList3.Text) ||
                    string.IsNullOrWhiteSpace(TextBox5.Text))
                {
                    return false;
                }

                return true;
            }
        

    }
}