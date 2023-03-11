using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace chatsharp_cs_project.Model
{
    public class FriendsJSON
    {
        public string Username { get; set; }

        public FriendsJSON(string username)
        {
            Username = username;
        }
    }
}
