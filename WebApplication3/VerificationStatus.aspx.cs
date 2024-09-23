using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class VerificationStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch the data and bind it to the GridView
                // ApplicantGridView.DataSource = GetApplicants();
                // ApplicantGridView.DataBind();
            }
        }

        protected void ViewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Verification.aspx?ApplicantID=123");
        }

        // Simulate fetching data from a database
        private List<Applicant> GetApplicants()
        {
            return new List<Applicant>
                {
                    new Applicant { Id = "1276537", ScholarshipName = "STATE BOARD TOPPER SCHOLARSHIP", Status = "IN PROCESS", VerificationStatus = "PENDING" },
                    new Applicant { Id = "1276539", ScholarshipName = "SINGLE GIRL CHILD", Status = "COMPLETED", VerificationStatus = "VERIFIED" },
                    new Applicant { Id = "1245368", ScholarshipName = "UG MP STATE BOARD", Status = "RESUBMISSION REQUEST", VerificationStatus = "PENDING" }
                };
        }
    }

    public class Applicant
    {
        public string Id { get; set; }
        public string ScholarshipName { get; set; }
        public string Status { get; set; }
        public string VerificationStatus { get; set; }
    };
}