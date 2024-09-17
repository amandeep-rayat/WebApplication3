using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NewAppButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("NewApplication.aspx");
        }

        protected void VerifyStatusButton_Click1(object sender, EventArgs e)
        {

            Response.Redirect("VerificationStatus.aspx");
        }

        protected void ExistingAppButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("ExistingApplication.aspx");
        }

        protected void ViewStatsButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("ViewStats.aspx");
        }

        protected void BusinessRulesButton_Click(object sender, EventArgs e)
        {

        }

        protected void AddVerifierButton_Click(object sender, EventArgs e)
        {

        }
    }
}