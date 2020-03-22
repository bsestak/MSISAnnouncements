using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSISDepartmentApp
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Credential c = new Credential();

            MSISUser User = MSISUser.GetUser(c,tboxUsername.Text);

            string HashPassword = Crypto.CreateHash(tboxPassword.Text, User.Salt);
            
            if(User.Password == HashPassword)
            {
                List<string> NewHash = new List<string>();

                Session["LoggedIn"] = 1;
                Response.Redirect("Home.aspx");
            }


            if (tboxUsername.Text == "validuser" && tboxPassword.Text == "password")
            {
                Response.Redirect("~/SuccessPage.aspx");
            }
            else
            {
                lblError.Text = "Invalid Credentials";
            }
        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CreateAccount.aspx");
        }
    }
}