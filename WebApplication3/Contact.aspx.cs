using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Send_click(object sender, EventArgs e)
        {
            if(regexEmailValid.Text.IsNullOrWhiteSpace() && emailAdd.Text == "")
            {
                Response.Write("<script>alert('Enter both email and query');</script>");
                return;
            }
        }
    }
}