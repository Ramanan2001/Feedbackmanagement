using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Feedback
{
    public partial class StudGivveFeedback : System.Web.UI.Page
    {
        string strcon = @"Data Sourcev=LAPTOP-2T08RC7E;initial Catalog=Feedback;uid =sa;pwd=sql;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("InsertStudentRegistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();

            
        }

       
    }
}