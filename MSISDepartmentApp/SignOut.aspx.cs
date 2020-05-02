using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSISDepartmentApp
{
    public partial class SignOut : System.Web.UI.Page
    {
        public SessionParams Params { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Params = Session["Params"] as SessionParams;

            if (Params == null)
            {
                Params = new SessionParams();
            }

            Params.IsLoggedIn = false;
            Params.User = new MSISUser();
        }
    }
}