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

        protected void Page_Load(object sender, EventArgs e)
        {
            Events = new List<Event>();
            DayEvents = new List<Event>();

            Session["LoggedIn"] = "1";

            try
            {
                if (Session["LoggedIn"].ToString() == "1")
                {
                    BtnAddEvent.Visible = true;
                    BtnAction.Text = "Sign Out";
                }
                else
                {
                    BtnAction.Text = "Sign In";
                    BtnAddEvent.Visible = false;
                }
            }
            catch
            {
                Session["LoggedIn"] = "";
            }

            Events = Event.GetEventList(credential);            

            

            //Event E1 = new Event(1, "AITP", "This is the Description for Event 1", DateTime.Now.AddDays(5), Color.Red);
            //Event E2 = new Event(2, "AITP", "This is the Description for Event 2", DateTime.Now.AddDays(8), Color.Green);
            //Event E3 = new Event(3, "AITP", "This is the Description for Event 3", DateTime.Now.AddDays(12), Color.Yellow);
            //Event E4 = new Event(4, "AITP", "This is the Description for Event 4", DateTime.Now.AddDays(13), Color.Green);
            //Event E5 = new Event(5, "AITP", "This is the Description for Event 5", DateTime.Now.AddDays(20), Color.Blue);
            //Event E6 = new Event(6, "AITP", "This is the Description for Event 6", DateTime.Now.AddDays(20), Color.Blue);

            //events.Add(E1);
            //events.Add(E2);
            //events.Add(E3);
            //events.Add(E4);
            //events.Add(E5);
            //events.Add(E6);
            //events.Add(E6);
            //events.Add(E6);
            //events.Add(E6);
            //events.Add(E6);
            //events.Add(E6);
        }

        protected void EventsCalender_SelectionChanged(object sender, EventArgs e)
        {
            Calendar c = sender as Calendar;

            DayEvents = Events.Where(a => a.StartDate.ToShortDateString() == c.SelectedDate.ToShortDateString());
            //Events = Events.Where(a => a.StartDate.ToShortDateString() == c.SelectedDate.ToShortDateString());


        }

        //protected void EventsCalender_DayRender(object sender, DayRenderEventArgs e)
        //{
        //    CalendarDay d = ((DayRenderEventArgs)e).Day;
        //    TableCell c = ((DayRenderEventArgs)e).Cell;

        //    if (!d.IsOtherMonth)
        //    {
        //        foreach (Event MyEvent in Events)
        //        {
        //            c.Controls.Add(new LiteralControl(Environment.NewLine + MyEvent.Type));
        //        }
        //    }
        //}

        protected void EventsCalender_DayRender(object sender, DayRenderEventArgs e)
        {
            Calendar c = sender as Calendar;

            foreach (Event MyEvent in Events)
            {
                if (Convert.ToDateTime(e.Day.Date).ToShortDateString() == MyEvent.StartDate.ToShortDateString())
                {
                    CalendarDay d = ((DayRenderEventArgs)e).Day;
                    TableCell TC = ((DayRenderEventArgs)e).Cell;

                    Label L = new Label();
                    L.Text = Environment.NewLine + MyEvent.Type;
                    L.BackColor = MyEvent.BackColor;

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
            if (Session["LoggedIn"].ToString() == "1")
            {
                BtnAddEvent.Visible = false;
                BtnAction.Text = "Sign In";
                Session["LoggedIn"] = "0";
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }

            
        }

        protected void BtnAddEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewEvent.aspx");
        }
    }
}