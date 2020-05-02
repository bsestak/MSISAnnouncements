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
        public SessionParams Params { get; set; }
        public Credential creds { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            creds = new Credential();

            Params = Session["Params"] as SessionParams;

            if (Params == null)
            {
                Params = new SessionParams();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            MSISUser User = MSISUser.GetUser(creds, tboxUsername.Text);
            string HashPassword = Crypto.CreateHash(tboxPassword.Text, User.Salt);

            if(User.Password == HashPassword)
            {
                SessionParams Params = Session["Params"] as SessionParams;

                if(Params == null)
                {
                    Params = new SessionParams();
                }

                Params.IsLoggedIn = true;
                Params.User = User;
                Session["Params"] = Params;

                Response.Redirect("Home.aspx");
            }
        }

        protected void btnAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("Account.aspx");
        }
    }
}