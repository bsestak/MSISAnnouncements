using System;
using System.Collections.Generic;
using System.Data;
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
        List<Event> events = new List<Event>();
        public IEnumerable<Event> DayEvents { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            DayEvents = new List<Event>();

            Event E1 = new Event(1, "AITP", "This is the Description for Event 1", DateTime.Now.AddDays(5), Color.Red);
            Event E2 = new Event(2, "AITP", "This is the Description for Event 2", DateTime.Now.AddDays(8), Color.Green);
            Event E3 = new Event(3, "AITP", "This is the Description for Event 3", DateTime.Now.AddDays(12), Color.Yellow);
            Event E4 = new Event(4, "AITP", "This is the Description for Event 4", DateTime.Now.AddDays(13), Color.Green);
            Event E5 = new Event(5, "AITP", "This is the Description for Event 5", DateTime.Now.AddDays(20), Color.Blue);
            Event E6 = new Event(6, "AITP", "This is the Description for Event 6", DateTime.Now.AddDays(20), Color.Blue);

            events.Add(E1);
            events.Add(E2);
            events.Add(E3);
            events.Add(E4);
            events.Add(E5);
            events.Add(E6);
            events.Add(E6);
            events.Add(E6);
            events.Add(E6);
            events.Add(E6);
            events.Add(E6);
        }

        protected void EventsCalender_SelectionChanged(object sender, EventArgs e)
        {
            Calendar c = sender as Calendar;

            DayEvents = events.Where(a => a.StartDate.ToShortDateString() == c.SelectedDate.ToShortDateString());
          
        }

        protected void EventsCalender_DayRender(object sender, DayRenderEventArgs e)
        {
            Calendar c = sender as Calendar;

            foreach (Event MyEvent in events)
            {
                if (Convert.ToDateTime(e.Day.Date).ToShortDateString() == MyEvent.StartDate.ToShortDateString())
                {
                    //HtmlAnchor anchor = new HtmlAnchor();

                    //anchor.InnerHtml = "<br/>" + MyEvent.Type;

                    //string method = "ShowAddTaskPane(event,'" + e.Day.Date.ToShortDateString() + "')";
                    //anchor.HRef = "#";
                    //anchor.Attributes.Add("onclick", method);
                    //e.Cell.Controls.Add(anchor);

                    //e.Cell.Text = e.Day.DayNumberText + "<br/>" + MyEvent.Type;
                    e.Cell.BackColor = MyEvent.BackColor;                    
                }
            }
        }
    }
}