using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSISDepartmentApp.pages
{
    public partial class Account : System.Web.UI.Page
    {
        public SessionParams Params { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Params = Session["Params"] as SessionParams;

            if (Params == null)
            {
                Params = new SessionParams();
                //BtnCreate.Enabled = false;
                //lblError.Text = "Must be logged in as an admin to create an account";
                //lblMessage.Visible = true;
            }
            else
            {
                if(!Params.IsLoggedIn)
                {
                    //BtnCreate.Enabled = false;
                    //lblError.Text = "Must be logged in as an admin to create an account";
                    //lblMessage.Visible = true;
                }
            }
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            List<string> HashItems = new List<string>();

            HashItems = Crypto.CreateHash(tboxPassword.Text);

            MSISUser user = new MSISUser();

            user.FirstName = tboxFirstName.Text;
            user.Lastname = tboxLastname.Text;
            user.UserName = tboxUsername.Text;
            user.Password = HashItems[0];
            user.Salt = HashItems[1];

            if (user.InsertUser())
            {
                Response.Redirect("~/SignIn.aspx");
            }
            else
            {
                lblMessage.Text = "Username is already in use. Please select a different Username.";
            }
            //List<string> HashItems = new List<string>();

            //HashItems = Crypto.CreateHash(tboxPassword.Text);

            //MSISUser user = new MSISUser();

            //user.FirstName = tboxFirstName.Text;
            //user.LastName = tboxLastname.Text;
            //user.UserName = tboxUsername.Text;
            //user.Password = HashItems[0];
            //user.Salt = HashItems[1];
            //user.IsAdmin = Convert.ToInt32(CboxAdmin.Checked);

            //if (user.Insert())
            //{
            //    Response.Redirect("SignIn.aspx");
            //}
            //else
            //{
            //    lblMessage.Text = "Username is already in use. Please select a different Username.";
            //    lblMessage.Visible = true;
            //}
        }
    }
}