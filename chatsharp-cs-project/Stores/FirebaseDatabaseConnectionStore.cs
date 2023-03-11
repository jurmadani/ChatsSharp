using chatsharp_cs_project.Model;
using chatsharp_cs_project.ViewModel;
using Firebase.Auth;
using Firebase.Database;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace chatsharp_cs_project.Stores
{
    public class FirebaseDatabaseConnectionStore
    {
        public IFirebaseConfig _config;
        public IFirebaseClient _client;
        private FirebaseAuthLink _currentFirebaseAuthLink;
        private readonly FirebaseAuthProvider _firebaseAuthProvider;
        public User CurrentUser => _currentFirebaseAuthLink?.User;

        public FirebaseDatabaseConnectionStore()
        {
            _config = _config = new FireSharp.Config.FirebaseConfig()
            {              
                AuthSecret = "FJoSJ5gkWHxjyHe0lJZw0YR8n7AFPwaVVaJLtufg",
                BasePath = "https://chatsharp-6bfba-default-rtdb.europe-west1.firebasedatabase.app/"
            };
            _client = new FireSharp.FirebaseClient(_config);
        }   

        public int CheckForConnection()
        {
            if (_client != null)
                return 1;
            return 0;
        }

        public async Task InsertUserIntoDatabase(UserModel userModel)
        {
            try
            {
                if (CheckForConnection() == 1)
                {
                    SetResponse response =  await _client.SetAsync("Users/" + userModel.Username, userModel);
                }
                else
                {
                    MessageBox.Show("Connection is not established");
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Error when inserting into database");
            }
            
        }


     /*   public async Task TestMessages(MessageModel messageModel,int id)
        {
            try
            {
                if (CheckForConnection() == 1)
                {
                    SetResponse response = await _client.SetAsync("Messages/" + id, messageModel);
                }
                else
                {
                    MessageBox.Show("Connection is not established");
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Error when inserting into database");
            }
        }*/


        public async Task<List<string>> GetAllDataAsync()
        {
            List<string> data = new List<string>();
            FirebaseResponse response = await _client.GetAsync("");
            dynamic result = response.ResultAs<dynamic>();

            foreach (KeyValuePair<string, object> entry in result)
            {
                data.Add(entry.Value.ToString());
            }

            return data;
        }

    }
}
