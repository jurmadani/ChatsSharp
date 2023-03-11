using chatsharp_cs_project.Commands;
using chatsharp_cs_project.Model;
using chatsharp_cs_project.Stores;
using FireSharp.Response;
using GalaSoft.MvvmLight.Command;
using MVVMEssentials.ViewModels;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace chatsharp_cs_project.ViewModel
{
    class FriendsViewModel : ViewModelBase
    {
        public ObservableCollection<string> ListOfPotentialFriends { get; set; }
        public FirebaseDatabaseConnectionStore _firebaseDatabaseConnection;
        private readonly AuthenticationStore _authenticationStore;
        public string CurrentUserUsername => _authenticationStore.CurrentUser?.DisplayName ?? string.Empty;
        public RelayCommand SearchCommand { get; private set; }
        public RelayCommand AddFriendCommand { get; private set; }
        public int LastIndexOfFriends { get; set; }

        public string _username;
        public string Username
        {
            get { return _username; }
            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
            }
        }


        public FriendsViewModel(AuthenticationStore authenticationStore)
        {
            _firebaseDatabaseConnection = new FirebaseDatabaseConnectionStore();
            ListOfPotentialFriends = new ObservableCollection<string>();
            _authenticationStore = authenticationStore;
            SearchCommand = new RelayCommand(ExecuteSearchCommand);
            AddFriendCommand = new RelayCommand(AddFriendFunction);
        }

        private async void ExecuteSearchCommand()
        {
            ListOfPotentialFriends.Clear();
            FirebaseResponse response = await _firebaseDatabaseConnection._client.GetAsync("Users/");
            string json = response.Body.ToString();
            if (!string.IsNullOrEmpty(json))
            {
                var jsonData = JsonConvert.DeserializeObject<JObject>(json);
                foreach (var data in jsonData)
                {
                    string UsernameFromJSON = (string)data.Value["Username"];
                    if (UsernameFromJSON.Contains(Username) == true)
                    {
                        ListOfPotentialFriends.Add((string)UsernameFromJSON);
                    }
                }

            }

        }

        private int GetFriendsNumberOfUser(string username)
        {
            int UserFriendsNumber;
            FirebaseResponse response = _firebaseDatabaseConnection._client.Get("Users/");
            string json = response.Body.ToString();
            if (!string.IsNullOrEmpty(json))
            {
                var jsonData = JsonConvert.DeserializeObject<JObject>(json);
                foreach (var data in jsonData)
                {
                    if ((string)data.Value["Username"] == username)
                    {
                        UserFriendsNumber = (int)data.Value["FriendsNumber"];
                        return UserFriendsNumber;
                    }

                }

            }
            return -1;
        }

        public void AddFriendFunction()
        {
            ExecuteAddFriendCountCommand();
            ExecuteAddFriendUsernameCommand();
            MessageBox.Show("Succesfully added " + Username + " as your friend!", "Succes", MessageBoxButton.OK, MessageBoxImage.Information);
        }
        private async void ExecuteAddFriendCountCommand()
        {
            int CurrentUserFriendsNumber = GetFriendsNumberOfUser(CurrentUserUsername);
            int UserToBeAddedFriendsNumber = GetFriendsNumberOfUser(Username);

            FriendsNumberJSON currentUser = new FriendsNumberJSON(CurrentUserFriendsNumber + 1);
            FriendsNumberJSON userToBeAdded = new FriendsNumberJSON(UserToBeAddedFriendsNumber + 1);
            try
            {
                await _firebaseDatabaseConnection._client.UpdateAsync("Users/" + CurrentUserUsername, currentUser);
                await _firebaseDatabaseConnection._client.UpdateAsync("Users/" + Username, userToBeAdded);
            }
            catch (Exception)
            {
                MessageBox.Show("Added friend failed due to connection errors. Try again later.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }


        }

        private async void ExecuteAddFriendUsernameCommand()
        {
       
            int CurrentUserFriendsNumber = GetLastIndexOfFriends(CurrentUserUsername);
            int UserToBeAddedFriendsNumber = GetLastIndexOfFriends(Username);

            FriendsJSON currentUser = new FriendsJSON(CurrentUserUsername);
            FriendsJSON userToBeAdded = new FriendsJSON(Username);

            try
            {
                await _firebaseDatabaseConnection._client.UpdateAsync("Users/" + CurrentUserUsername + "/Friends/" + CurrentUserFriendsNumber.ToString(), userToBeAdded);
                await _firebaseDatabaseConnection._client.UpdateAsync("Users/" + Username + "/Friends/" + UserToBeAddedFriendsNumber.ToString(), currentUser);
            }
            catch (Exception)
            {
                MessageBox.Show("Added friend failed due to connection errors. Try again later.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        public int GetLastIndexOfFriends(string username)
        {
            LastIndexOfFriends = 1;

            try
            {
                var JSONResponse = _firebaseDatabaseConnection._client.Get("Users/" + username + "/Friends").ResultAs<FriendsJSON[]>();
                if (JSONResponse != null)
                {
                    foreach (var response in JSONResponse)
                    {
                        if (response != null)
                            ++LastIndexOfFriends;
                    }
                    return LastIndexOfFriends;
                }
                else { return 1; }
            }
            catch(Exception) {

                return LastIndexOfFriends;
            }
                
        }
    }

}

