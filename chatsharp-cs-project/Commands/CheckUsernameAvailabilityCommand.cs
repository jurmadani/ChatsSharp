using chatsharp_cs_project.Stores;
using FireSharp.Response;
using MVVMEssentials.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace chatsharp_cs_project.Commands
{
    public class CheckUsernameAvailabilityCommand
    {

        private FirebaseDatabaseConnectionStore _firebaseDatabaseConnection;

        public CheckUsernameAvailabilityCommand()
        {
            _firebaseDatabaseConnection = new FirebaseDatabaseConnectionStore();
        }

        public bool IsUsernameAvailable(string Username)
        {

            FirebaseResponse response = _firebaseDatabaseConnection._client.Get("Users/" + Username);
            if(response.Body == "null")
            {
                return true;
            }
            return false;


        }

    }
}
