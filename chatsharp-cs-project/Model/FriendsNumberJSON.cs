using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace chatsharp_cs_project.Model
{
    public class FriendsNumberJSON
    {
        public int FriendsNumber { get; set; }

        public FriendsNumberJSON(int friendsNumber) {
            FriendsNumber = friendsNumber;
        }
    }
}
