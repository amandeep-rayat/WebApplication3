using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class BusinessRules : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }
        protected void ConfirmButton_Click(object sender, EventArgs e)
        {
            // Retrieve the values from the textboxes.           
            string rule1 = Rule1.Text;
            string type1 = Type1.Text;
            string rule2 = Rule2.Text;
            string type2 = Type2.Text;
            string rule3 = Rule3.Text;
            string type3 = Type3.Text;
            string rule4 = Rule4.Text;
            string type4 = Type4.Text;
            string rule5 = Rule5.Text;
            string type5 = Type5.Text;
            // You can now process the data            
            // For example, validate or save to a database            
            // Here's just a sample output to test functionality (Console output won't work in ASP.NET, this is just for testing purposes):           
            Response.Write($"Rule1: {rule1}, Type1: {type1}<br/>");
            Response.Write($"Rule2: {rule2}, Type2: {type2}<br/>");
            Response.Write($"Rule3: {rule3}, Type3: {type3}<br/>");
            Response.Write($"Rule4: {rule4}, Type4: {type4}<br/>");
            Response.Write($"Rule5: {rule5}, Type5: {type5}<br/>");
        }
    }
}