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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string applicantName = txtApplicantName.Text.Trim();
            string scholarshipName = txtScholarshipName.Text.Trim();
            string year = txtYear.Text.Trim();
            if(string.IsNullOrEmpty(applicantName) || string.IsNullOrEmpty(scholarshipName) || string.IsNullOrEmpty(year))
            {
                //  Show error messages if any field is empty
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please fill all the required fields.');",true);
                GridView2.Visible = false;
                return;
            }
            // Bind data to GridView
            BindGridView(applicantName, scholarshipName, year);
        }

        private void BindGridView(string applicantName, string scholarshipName, string year)
        {
            // Create a dummy DataTable for demonstration
            DataTable dt = new DataTable();
            dt.Columns.Add("SNo", typeof(int));
            dt.Columns.Add("DocumentName", typeof(string));
            dt.Columns.Add("SubmissionStatus", typeof(string));
            dt.Columns.Add("Status", typeof(string));
            dt.Columns.Add("Comment", typeof(string));

            // Add dummy data
            dt.Rows.Add(1, "Aadhar Name", "Submitted", "Verified", "Eligible");
            dt.Rows.Add(2, "Driving License", "Not Submitted", "Pending", "");
            dt.Rows.Add(3, "UG Degree", "Submitted", "Pending", "Not Eligible");
            dt.Rows.Add(4, "PG Degree", "Submitted", "Pending", "");
            dt.Rows.Add(5, "High School Marksheet", "Not Submitted", "Pending", "");
            dt.Rows.Add(6, "Secondary School Marksheet", "Submitted", "In Process", "Resubmit the Document");
            dt.Rows.Add(7, "Domicile", "Submitted", "In Process", "");
            dt.Rows.Add(8, "DOB", "Submitted", "In Process", "");

            // Bind data to GridView
            GridView2.DataSource = dt;
            GridView2.DataBind();
            GridView2.Visible = true; // Show GridView
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "View")
            {
                // Retrieve the row index stored in the CommandArgument
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                // Find the row in the GridView
                GridViewRow row = GridView2.Rows[rowIndex];

                // Retrieve the document details based on the row index or SNo
                string documentName = row.Cells[1].Text;

                // For demonstration purposes, you can show an alert or perform other actions
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Viewing document: " + documentName + "');", true);
            }
        }

    }
}
