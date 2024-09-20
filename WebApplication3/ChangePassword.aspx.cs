using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            // Get the entered password values from the textboxes
            string newPassword = txtNewPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;


            Response.Write("<script>alert('Are You Sure!');</script>");
            // Validate the password based on the criteria
            if (ValidatePassword(newPassword))
            {

                // Check if the new password and confirm password are the same
                if (newPassword == confirmPassword)
                {
                    // Simulate changing the password in the system (e.g., updating the database)
                    // Show a success message after the password is successfully changed.
                    Response.Write("<script>alert('Password changed successfully!');</script>");
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    // Display alert if the passwords do not match.
                    Response.Write("<script>alert('New Password and Confirm Password do not match!');</script>");
                }
            }
            else
            {
                // Display an alert if the password does not meet the criteria.
                Response.Write("<script>alert('Password must be at least 8 characters long, contain at least one uppercase letter, one lowercase letter, one number, and one special character.');</script>");
            }
        }

        // Function to validate the password based on certain rules
        private bool ValidatePassword(string password)
        {
            // Regular expression for validating the password
            string pattern = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$";
            Regex regex = new Regex(pattern);

            // Return true if the password matches the pattern, false otherwise
            return regex.IsMatch(password);
        }

        // Optional: Provide real-time feedback on password validity
        protected void txtNewPassword_TextChanged(object sender, EventArgs e)
        {
            string newPassword = txtNewPassword.Text;

            // Check password validity in real-time
            if (!ValidatePassword(newPassword))
            {
                // You can implement real-time feedback here for invalid password format
                Response.Write("<script>alert('Are You Sure!');</script>");
                Response.Write("<script>alert('Password does not meet the criteria.');</script>");
            }
        }

    }
}