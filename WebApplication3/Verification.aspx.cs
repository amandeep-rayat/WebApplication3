using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Verification : System.Web.UI.Page
    {
        private string connectionString;

        // This method is triggered when the page is loaded
        protected void btnUploadImage_Click(object sender, EventArgs e)
        {
            // Get the file upload control
            FileUpload fileUpload = (System.Web.UI.WebControls.FileUpload)((Button)sender).Parent.FindControl("fileUploadImage");

            if (fileUpload.HasFile)
            {
                byte[] fileData = fileUpload.FileBytes;
                string fileName = fileUpload.FileName;

                // Assuming you have ApplicationID as the CommandArgument
                string applicationID = ((Button)sender).CommandArgument;

                //using (SqlConnection conn = new SqlConnection(connectionString))
                //{
                //    string query = "UPDATE ApplicantDocumentsDetails SET DocumentData = @DocumentData, DocumentName = @DocumentName WHERE ApplicationID = @ApplicationID";
                //    using (SqlCommand cmd = new SqlCommand(query, conn))
                //    {
                //        cmd.Parameters.AddWithValue("@DocumentData", fileData);
                //        cmd.Parameters.AddWithValue("@DocumentName", fileName);
                //        cmd.Parameters.AddWithValue("@ApplicationID", applicationID);

                //        conn.Open();
                //        cmd.ExecuteNonQuery();
                //    }
                //}
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get the ApplicantID from the query string (e.g., ?ApplicantID=123)
                string applicantId = Request.QueryString["ApplicantID"];

                if (!string.IsNullOrEmpty(applicantId))
                {
                    // Load the applicant details and their document information
                    LoadApplicantDetails(applicantId);
                    LoadApplicantDocuments(applicantId);
                }
            }
        }

        // Method to load applicant details
        private void LoadApplicantDetails(string applicantId)
        {
            // Example hardcoded data (replace with database query)
            var applicantDetails = new
            {
                ApplicantName = "John Doe",
                ScholarshipName = "UG Scholarship",
                Year = "2023"
            };

            // Populate the TextBoxes with applicant details
            txtApplicantName.Text = applicantDetails.ApplicantName;
            txtScholarshipName.Text = applicantDetails.ScholarshipName;
            txtYear.Text = applicantDetails.Year;
        }

        // Method to load applicant documents
        private void LoadApplicantDocuments(string applicantId)
        {
            // Create a DataTable (replace this with actual database query results)
            DataTable dt = new DataTable();
            dt.Columns.Add("SNo");
            dt.Columns.Add("DocumentName");
            dt.Columns.Add("SubmissionStatus");
            dt.Columns.Add("Status");
            dt.Columns.Add("Comment");
            dt.Columns.Add("ApplicationID");

            // Example rows (replace with actual database data)
            dt.Rows.Add(1, "Passport", "Submitted", "Verified", "All good", "1");
            dt.Rows.Add(2, "Driving License", "Pending", "Pending", "Awaiting submission", "2");

            // Bind the GridView to display document information
            GridView2.DataSource = dt;
            GridView2.DataBind();
            GridView2.Visible = true; // Make GridView visible once data is loaded
        }

    }
}
