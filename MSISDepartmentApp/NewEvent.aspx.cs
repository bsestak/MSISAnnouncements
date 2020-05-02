using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace MSISDepartmentApp
{
    public partial class NewEvent : System.Web.UI.Page
    {
        public SessionParams Params { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Params = Session["Params"] as SessionParams;

            if (Params == null)
            {
                Params = new SessionParams();
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Event MyEvent = new Event();
            MyEvent.Type = txtBoxType.Text;
            MyEvent.Description = txtBoxDesc.Text;
            MyEvent.StartDate = Convert.ToDateTime(txtBoxDate.Text);
            MyEvent.BackColor = System.Drawing.ColorTranslator.FromHtml(txboxColor.Text);

            MyEvent.InsertEvent(MyEvent);
        }
    }
}