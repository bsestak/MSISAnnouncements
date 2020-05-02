using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MSISDepartmentApp
{
    public class SessionParams
    {
        public bool IsLoggedIn { get; set; }
        public MSISUser User { get; set; }
    }
}