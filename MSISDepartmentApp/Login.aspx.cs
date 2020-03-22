using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace MSISDepartmentApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string UserName = tboxUsername.Text;
            string Password = tboxPassword.Text;

            Crypto.CreateHash(Password);

            if(tboxUsername.Text == "User" && tboxPassword.Text == "pass")
            {
                Session["LoggedIn"] = 1;
                Response.Redirect("Home.aspx");
            }

            
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}