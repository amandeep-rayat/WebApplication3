using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        //protected global::System.Web.UI.WebControls.Label lblTimer;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Event handler for the 'Send OTP' button
        protected void SendOTP_Click(object sender, EventArgs e)
        {
            // Ensure the controls are not null
            if (lblTimer != null)
            {
                string userEmail = txtEmail.Text.Trim();
                if (!string.IsNullOrEmpty(userEmail))
                {
                    // Logic to simulate sending OTP
                    lblTimer.Text = "OTP sent. Time left: 01:00";
                }
                else
                {
                    lblTimer.Text = "Please enter a valid email.";
                }
            }
            else
            {
                // Handle the case where lblTimer is null
                // This will help you understand if the control is not being initialized
                throw new Exception("lblTimer control is not initialized.");
            }
            if (lblTimer != null)
            {
                string userEmail = txtEmail.Text.Trim();
                if (!string.IsNullOrEmpty(userEmail))
                {
                    // Logic to simulate sending OTP
                    lblTimer.Text = "OTP sent. Time left: 01:00";
                }
                else
                {
                    lblTimer.Text = "Please enter a valid email.";
                }
            }
            else
            {
                // Handle the case where lblTimer is null
                // This will help you understand if the control is not being initialized
                throw new Exception("lblTimer control is not initialized.");
            }
        }
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            if (txtOTP != null && lblTimer != null)
            {
                string enteredOTP = txtOTP.Text.Trim();
                if (enteredOTP == "123456") // Replace with actual OTP validation logic
                {
                    Response.Redirect("ChangePassword.aspx");
                }
                else
                {
                    lblTimer.Text = "Invalid OTP. Please try again.";
                }
            }
            else
            {
                lblTimer.Text = "An error occurred. Please try again.";
            }
        }
    }
}