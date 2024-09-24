using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            // Get the user ID and password from the form
            string userId = Request.Form["userid"];
            string password = Request.Form["password"];



            // Validate the inputs (basic validation, you can add more)
            //if (string.IsNullOrEmpty(userId) || string.IsNullOrEmpty(password))
            //{
            //    // Display error if any field is empty
            //    Response.Write("<script>alert('Please enter both User ID and Password.');</script>");
            //    return;
            //}
            Session.Add("username", userid);
            // Authentication Logic
            // Replace this with your actual authentication logic
            bool isAuthenticated = AuthenticateUser(userId, password);

            if (userId == "Admin@xyz.org" && password == "Admin@123")
            {
                Response.Redirect("Default.aspx");
            }
            else if(userId == "Verifier@xyz.org" && password == "Verifier@123")
            {
                Response.Redirect("Verifier.aspx");
            }
            else if (isAuthenticated)
            {
                // If authentication is successful, redirect to the Change Password page
                Response.Redirect("ChangePassword.aspx");
            }
            else
            {
                // Display error message on failed login
                Response.Write("<script>alert('Use email and strong password.');</script>");
            }
        }

        // A mock method for user authentication
        private bool AuthenticateUser(string userId, string password)
        {
            // Implement your authentication logic here
            // For example, check user credentials against a database

            // Example hardcoded credentials (replace with actual authentication logic)
            if (userId == "Admin" && password == "password")
            {
                return true;
            }

            return false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                // Display an error message or handle failed login
                Response.Redirect("ChangePassword.aspx");
            
        }
        
}
}