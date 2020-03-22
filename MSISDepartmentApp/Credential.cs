using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace MSISDepartmentApp
{
    public class Credential
    {
        public string ConnectionString { get; set; }

        private class JsonSchema
        {
            public string ConnectionString { get; set; }
        }

        public Credential()
        {
            string root = AppDomain.CurrentDomain.BaseDirectory;

            using (StreamReader r = new StreamReader(root +"Credentials.json"))
            {
                var json = r.ReadToEnd();
                var items = JsonConvert.DeserializeObject<JsonSchema>(json);

                this.ConnectionString = items.ConnectionString;
            }
        }

    }
}