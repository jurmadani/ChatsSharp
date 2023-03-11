using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace chatsharp_cs_project.Model
{
    [Serializable]
    public class UserModel
    {
        public string Id { get; set; }
        public string Username { get; set; }
        public string JobTitle { get; set; }
        public int FriendsNumber { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }


        public UserModel(string id,string username, string jobTitle, int friendsNumber, string phoneNumber, string email)
        {
            Id = id;
            Username = username;
            JobTitle = jobTitle;
            FriendsNumber = friendsNumber;
            PhoneNumber = phoneNumber;
            Email = email;   
        }


    }
}
