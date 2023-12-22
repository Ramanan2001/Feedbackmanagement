using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Feedback
{
    public partial class StudentMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["role"] != null && Session["role"].Equals("Student"))
            //{
            //    LinkButton3.Visible = true;
            //    LinkButton2.Visible = true;
            //    LinkButton1.Visible = true;

            //    // Check if Session["FirstName"] is not null before accessing its value
            //    if (Session["FirstName"] != null)
            //    {
            //        LinkButton1.Text = "Hello " + Session["FirstName"].ToString();
            //    }

            //    LinkButton4.Visible = true;
            //}

        }
    }
}