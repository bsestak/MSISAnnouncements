using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;

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
    }
}