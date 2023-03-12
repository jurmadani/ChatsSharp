using chatsharp_cs_project.Commands;
using chatsharp_cs_project.Model;
using chatsharp_cs_project.Stores;
using chatsharp_cs_project.View;
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

        public string _selectedPossibleFriend;
        public string SelectedPossibleFriend
        {
            get { return _selectedPossibleFriend; }
            set
            {
                _selectedPossibleFriend = value;
                OnPropertyChanged(nameof(SelectedPossibleFriend));
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
            if (CanNotAddYourSelfProtection() == false)
                MessageBox.Show("You can't add yourself as a friend.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            else if (FriendIsAlreadyInCurrentUserFriendList() == false)
            {
                ExecuteAddFriendCountCommand();
                ExecuteAddFriendUsernameCommand();
                MessageBox.Show("Succesfully added " + SelectedPossibleFriend + " as your friend!", "Succes", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
                MessageBox.Show(SelectedPossibleFriend + " is already in your friends list", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
           

        }

        private bool FriendIsAlreadyInCurrentUserFriendList()
        {

            FirebaseResponse response = _firebaseDatabaseConnection._client.Get("Users/" + CurrentUserUsername + "/Friends");
            string json = response.Body.ToString();
            if (!string.IsNullOrEmpty(json))
            {
                var jsonData = JsonConvert.DeserializeObject<JArray>(json);
                if (jsonData == null)
                    return false;
                foreach (var data in jsonData)
                {
                    if (data.Path != "[0]")
                        if (data.Value<String>("Username") == SelectedPossibleFriend)
                        {
                            return true;
                        }

                }

            }
            return false;

        }

        private bool CanNotAddYourSelfProtection()
        {
            if (SelectedPossibleFriend == CurrentUserUsername)
                return false;
            return true;
        }
        private async void ExecuteAddFriendCountCommand()
        {
            int CurrentUserFriendsNumber = GetFriendsNumberOfUser(CurrentUserUsername);
            int UserToBeAddedFriendsNumber = GetFriendsNumberOfUser(SelectedPossibleFriend);

            FriendsNumberJSON currentUser = new FriendsNumberJSON(CurrentUserFriendsNumber + 1);
            FriendsNumberJSON userToBeAdded = new FriendsNumberJSON(UserToBeAddedFriendsNumber + 1);
            try
            {
                await _firebaseDatabaseConnection._client.UpdateAsync("Users/" + CurrentUserUsername, currentUser);
                await _firebaseDatabaseConnection._client.UpdateAsync("Users/" + SelectedPossibleFriend, userToBeAdded);
            }
            catch (Exception)
            {
                MessageBox.Show("Added friend failed due to connection errors. Try again later.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }


        }

        private async void ExecuteAddFriendUsernameCommand()
        {

            int CurrentUserFriendsNumber = GetLastIndexOfFriends(CurrentUserUsername);
            int UserToBeAddedFriendsNumber = GetLastIndexOfFriends(SelectedPossibleFriend);

            FriendsJSON currentUser = new FriendsJSON(CurrentUserUsername);
            FriendsJSON userToBeAdded = new FriendsJSON(SelectedPossibleFriend);

            try
            {
                await _firebaseDatabaseConnection._client.UpdateAsync("Users/" + CurrentUserUsername + "/Friends/" + CurrentUserFriendsNumber.ToString(), userToBeAdded);
                await _firebaseDatabaseConnection._client.UpdateAsync("Users/" + SelectedPossibleFriend + "/Friends/" + UserToBeAddedFriendsNumber.ToString(), currentUser);
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
            catch (Exception)
            {

                return LastIndexOfFriends;
            }

        }
    }

}

