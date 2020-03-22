using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Data.SqlClient;

namespace MSISDepartmentApp
{
    public class Event
    {
        public int Id { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }
        public DateTime StartDate { get; set; }
        public Color BackColor{ get; set; }

        public Event(int id, string type, string desc, DateTime sdate, Color color)
        {
            this.Id = id;
            this.Type = type;
            this.Description = desc;
            this.StartDate = sdate;
            this.BackColor = color;
        }

        public Event()
        {

        }

        public static List<Event> CreateEventList(SqlDataReader reader)
        {
            List<Event> Events = new List<Event>();

            try
            {
                while(reader.Read())
                {
                    Event e = new Event();

                    e.Id = Convert.ToInt32(reader["Id"].ToString());
                    e.Type = reader["Type"].ToString();
                    e.Description = reader["Description"].ToString();
                    e.StartDate = Convert.ToDateTime(reader["Date"].ToString());
                    e.BackColor = Color.Blue;
                    //e.Type = reader["Type"].ToString();

                    Events.Add(e);
                    
                }
            }
            catch(Exception ex)
            {
                string s = ex.ToString();
            }

            return Events;
        }
    }
}