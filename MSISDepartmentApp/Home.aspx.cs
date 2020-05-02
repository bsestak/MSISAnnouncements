using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MSISDepartmentApp
{
    public partial class Home : System.Web.UI.Page
    {
        Credential credential = new Credential();

        //List<Event> events = new List<Event>();
        public new List<Event> Events { get; set; }
        public IEnumerable<Event> DayEvents { get; set; }
        public SessionParams Params { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Params = Session["Params"] as SessionParams;

            if (Params == null)
            {
                Params = new SessionParams();
            }

            Events = new List<Event>();
            DayEvents = new List<Event>();           
            Events = Event.GetEventList(credential);            

        }

        protected void EventsCalender_SelectionChanged(object sender, EventArgs e)
        {
            Calendar c = sender as Calendar;

            DayEvents = Events.Where(a => a.StartDate.ToShortDateString() == c.SelectedDate.ToShortDateString());
            //Events = Events.Where(a => a.StartDate.ToShortDateString() == c.SelectedDate.ToShortDateString());


        }

        protected void EventsCalender_DayRender(object sender, DayRenderEventArgs e)
        {
            foreach (Event MyEvent in Events)
            {
                if (Convert.ToDateTime(e.Day.Date).ToShortDateString() == MyEvent.StartDate.ToShortDateString())
                {
                    TableCell TC = ((DayRenderEventArgs)e).Cell;
                    
                    Label L = new Label();
                    L.Text = Environment.NewLine + MyEvent.Type;
                    L.BackColor = MyEvent.BackColor;
                    L.BorderColor = Color.Black;
                    L.BorderStyle = BorderStyle.Solid;

                    TC.Controls.Add(new LiteralControl("<br />"));
                    TC.Controls.Add(L);

                    //TC.Controls.Add(new LiteralControl("\r\n\r\n" + MyEvent.Type));
                    //HtmlAnchor anchor = new HtmlAnchor();

                    //anchor.InnerHtml = "<br/>" + MyEvent.Type;

                    //string method = "ShowAddTaskPane(event,'" + e.Day.Date.ToShortDateString() + "')";
                    //anchor.HRef = "#";
                    //anchor.Attributes.Add("onclick", method);
                    //e.Cell.Controls.Add(anchor);

                    //e.Cell.Text = e.Day.DayNumberText + "<br/>" + MyEvent.Type;
                    //e.Cell.BackColor = MyEvent.BackColor;
                }
            }
        }

        protected void BtnAction_Click(object sender, EventArgs e)
        {
            //if (Session["LoggedIn"].ToString() == "1")
            //{
            //    BtnAddEvent.Visible = false;
            //    BtnAction.Text = "Sign In";
            //    Session["LoggedIn"] = "0";
            //}
            //else
            //{
            //    Response.Redirect("SignIn.aspx");
            //}

            
        }

        protected void BtnAddEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewEvent.aspx");
        }
    }
}