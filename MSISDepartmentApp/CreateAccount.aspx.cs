using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSISDepartmentApp
{
    public partial class CreateAccount : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {

            List<string> HashItems = new List<string>();

            HashItems = Crypto.CreateHash(tboxPassword.Text);

            MSISUser user = new MSISUser();

            user.FirstName = tboxFirstName.Text;
            user.Lastname = tboxLastName.Text;
            user.UserName = tboxUsername.Text;
            user.Password = HashItems[0];
            user.Salt = HashItems[1];

            if(user.InsertUser())
            {
                Response.Redirect("~/SignIn.aspx");
            }
            else
            {
                lblMessage.Text = "Username is already in use. Please select a different Username.";
            }

        }
    }
}