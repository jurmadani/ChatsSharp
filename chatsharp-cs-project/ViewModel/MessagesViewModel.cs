using chatsharp_cs_project.Commands;
using chatsharp_cs_project.Stores;
using MVVMEssentials.ViewModels;
using System.Collections.Generic;
using chatsharp_cs_project.Model;
using Firebase.Database.Query;
using System.Windows;
using System.Collections.ObjectModel;
using System.Windows.Input;
using chatsharp_cs_project.View;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System;
using System.Globalization;
using FireSharp.Response;
using System.Windows.Threading;
using System.ComponentModel.Design;
using System.Windows.Controls;
using Newtonsoft.Json;
using System.Linq;
using System.Threading.Tasks;
using Firebase.Database;
using Newtonsoft.Json.Linq;
using GalaSoft.MvvmLight.Command;
using static System.Net.Mime.MediaTypeNames;
using System.Reactive;

namespace chatsharp_cs_project.ViewModel
{
    class MessagesViewModel : ViewModelBase
    {
        public AuthenticationStore _authenticationStore;
        public FirebaseDatabaseConnectionStore _firebaseDatabaseConnection;
        public List<MessageModel> messages { get; set; }

        public ObservableCollection<MessageModel> _messages;
        public ICommand SendMessageButton => new ViewModelCommand(PerformButtonClick);
        public RelayCommand TestCommand => new RelayCommand(PerformTestCommand);

        public ObservableCollection<MessageModel> MessageModelPropertiesList { get; set; }

        public ObservableCollection<UserModel> FriendsList { get; set; }
        public ObservableCollection<MessageModel> MessagesCollection { get; set; }

        public List<String> FriendsUsername;

        private int LastMessageIndex { get; set; }

        private string _messageFromTextBox;

        private string _messageToAppear;

        private char _testMessage;
        public char TestMessage
        {
            get
            {
                return _testMessage;
            }
            set
            {

                _testMessage = 't';
                OnPropertyChanged(nameof(TestMessage));
            }
        }
        public string MessageFromTextBox
        {
            get { return _messageFromTextBox; }
            set
            {
                _messageFromTextBox = value;
                OnPropertyChanged(nameof(MessageFromTextBox));
            }
        }

        public string MessageToAppear
        {
            get { return _messageToAppear; }
            set
            {
                _messageToAppear = value;
                OnPropertyChanged(nameof(MessageToAppear));
            }
        }


        private int _friendsListCount;
        public int FriendsListCount
        {
            get
            {
                return _friendsListCount;
            }
            set
            {
                _friendsListCount = value;
                OnPropertyChanged(nameof(FriendsUsername));
            }
        }

        UserModel _yourSelectedItem;
        public UserModel YourSelectedItem
        {
            get
            {
                return _yourSelectedItem;
            }
            set
            {
                _yourSelectedItem = value;
                OnPropertyChanged(nameof(YourSelectedItem));
            }
        }

        public MessagesViewModel(AuthenticationStore authenticationStore)
        {
            _firebaseDatabaseConnection = new FirebaseDatabaseConnectionStore();
            messages = new List<MessageModel>();
            _messages = new ObservableCollection<MessageModel>();
            FriendsList = new ObservableCollection<UserModel>();
            _authenticationStore = authenticationStore;
            FriendsUsername = new List<String>();
            MessageModelPropertiesList = new ObservableCollection<MessageModel>();
            MessagesCollection = new ObservableCollection<MessageModel>();



            UpdateTheListView();
            LiveCall();
            _friendsListCount = FriendsList.Count;
            //SetListener();
            //generate();
        }

        private bool PopulateTheFriendsUsernameList()
        {
            FriendsUsername.Clear();
            FirebaseResponse response = _firebaseDatabaseConnection._client.Get("Users/" + _authenticationStore.CurrentUser.DisplayName.ToString() + "/Friends");
            string json = response.Body.ToString();
            if (!string.IsNullOrEmpty(json))
            {
                var jsonData = JsonConvert.DeserializeObject<JArray>(json);
                if (jsonData == null)
                    return false;
                foreach (var data in jsonData)
                {
                    if (data.Path != "[0]")
                        FriendsUsername.Add(data.Value<String>("Username"));
                }

            }
            return true;
        }

        private bool PopulateTheFriendsListListView()
        {
            FriendsList.Clear();
            foreach (var username in FriendsUsername)
            {
                FirebaseResponse response = _firebaseDatabaseConnection._client.Get("Users/");
                string json = response.Body.ToString();
                if (!string.IsNullOrEmpty(json))
                {
                    var jsonData = JsonConvert.DeserializeObject<dynamic>(json);
                    if (jsonData == null)
                        return false;
                    foreach (var data in jsonData)
                    {
                        if (data != null)
                            if ((string)data.Value["Username"] == username)
                            {
                                var email = (string)data.Value["Email"];
                                var friendsNumber = (int)data.Value["FriendsNumber"];
                                var id = (string)data.Value["Id"];
                                var jobTitle = (string)data.Value["JobTitle"];
                                var phoneNumber = (string)data.Value["PhoneNumber"];
                                var userUsername = (string)data.Value["Username"];
                                UserModel newUserModel = new UserModel(id, userUsername, jobTitle, friendsNumber, phoneNumber, email);
                                FriendsList.Add(newUserModel);
                            }
                    }

                }
            }
            return true;

        }

        public void UpdateTheListView()
        {
            if (PopulateTheFriendsUsernameList() == true && PopulateTheFriendsListListView() == true)
            {
                PopulateTheFriendsUsernameList();
                PopulateTheFriendsListListView();
            }
        }


        public async void LiveCall()
        {

            if (YourSelectedItem == null && FriendsList.Count != 0)
                YourSelectedItem = FriendsList[0];
            while (true)
            {

                MessageModel message;
                MessageModelPropertiesList.Clear();
                FirebaseResponse response = await _firebaseDatabaseConnection._client.GetAsync("Messages/");
                string json = response.Body.ToString();
                if (!string.IsNullOrEmpty(json))
                {
                    var jsonData = JsonConvert.DeserializeObject<dynamic>(json);
                    if (jsonData != null)
                    {
                        foreach (var data in jsonData)
                        {
                            if (_authenticationStore.CurrentUser != null && YourSelectedItem != null && data != null && (_authenticationStore.CurrentUser.DisplayName == (string)data["Sender"] && YourSelectedItem.Username == (string)data.Receiver))
                            {
                                message = new MessageModel((string)data.Receiver, (string)data["Sender"], (string)data.MessageText, (string)data.Timestamp);
                                if (_authenticationStore.CurrentUser.DisplayName == message.Sender)
                                {
                                    message.SenderIsDifferentThenCurrentUser = "false";

                                }
                                else
                                {
                                    message.SenderIsDifferentThenCurrentUser = "true";
                                }

                                MessageModelPropertiesList.Add(message);
                            }

                            else if (YourSelectedItem != null & data != null && (_authenticationStore.CurrentUser.DisplayName == (string)data.Receiver && YourSelectedItem.Username == (string)data["Sender"]))
                            {
                                message = new MessageModel((string)data.Receiver, (string)data["Sender"], (string)data.MessageText, (string)data.Timestamp);
                                if (_authenticationStore.CurrentUser.DisplayName == message.Sender)
                                {
                                    message.SenderIsDifferentThenCurrentUser = "false";

                                }
                                else
                                {
                                    message.SenderIsDifferentThenCurrentUser = "true";
                                }

                                MessageModelPropertiesList.Add(message);
                            }


                        }
                    }

                }
                RefreshList_2();
            }
        }



        public int GetLastIndexOfMessages()
        {
            LastMessageIndex = 1;
            var reference = _firebaseDatabaseConnection._client.Get("Messages/");
            if (reference.Body != "null")
            {
                foreach (var response in (_firebaseDatabaseConnection._client.Get("Messages/")).ResultAs<MessageModel[]>())
                {
                    if (response != null)
                        ++LastMessageIndex;
                }
                return LastMessageIndex;
            }
            else
                return 1;
        }

        private async void PerformButtonClick(object commandParameter)
        {
            DateTime now = DateTime.Now;
            CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
            MessageModel MessageModel = new MessageModel(YourSelectedItem.Username.ToString(), _authenticationStore.CurrentUser.DisplayName, MessageFromTextBox, now.ToString());
            await _firebaseDatabaseConnection._client.SetAsync("Messages/" + GetLastIndexOfMessages().ToString(), MessageModel);
            MessageFromTextBox = "";

        }

        private void RefreshList_2()
        {
            MessageToAppear = "";
            MessagesCollection.Clear();
            foreach (var MessageModel in MessageModelPropertiesList)
            {
                if (MessageModel != null)
                {
                    // MessageToAppear += MessageModel.Sender + " says " + MessageModel.MessageText + " at " + MessageModel.Timestamp + "\n";
                    // MessageToAppear += MessageModel.Sender + "\n" + MessageModel.MessageText + "\n" + MessageModel.Timestamp + "\n\n--------------------------------------------------";
                    MessagesCollection.Add(MessageModel);
                }
            }
        }

        private void PerformTestCommand()
        {
            //LiveCall(YourSelectedItem.Username.ToString());
        }


        /*public async void generate()
        {
            _messages.Clear();
            foreach (var response in (await _firebaseDatabaseConnection._client.GetAsync("Messages/")).ResultAs<MessageModel[]>())
            {
                if (response != null)
                    _messages.Add(response);
            }
        }*/

        /*
           async void SetListener()
           {
               var dispatcher = Application.Current.Dispatcher;
               _listener = await _firebaseDatabaseConnection._client.OnAsync("Messages",
                   ((sender, args, context) =>
               {
                   dispatcher.Invoke(() =>
                   {
                       MessageToAppear += $"{args.Data}";

                   });
               }));
 
           }
        */

        /* private void ListenToNewMessages()
         {
             // Get a reference to the Messages node in Firebase Realtime Database
             var messagesRef = _firebaseDatabaseConnection._client.OnAsync("Messages");


             // Subscribe to the ChildAdded event, which triggers whenever a new child is added to the Messages node
             messagesRef.ChildAdded += (sender, args) =>
             {
                 // Get the new message data from the event arguments
                 var messageData = args.Snapshot.ToObject<MessageModel>();

                 // Add the new message to the messages list
                 messages.Add(messageData);

                 // Update the UI by refreshing the list and displaying the new messages
                 RefreshList();
                 DisplayTheList();
             };
         }*/



        /* private async void RefreshList()
         {
             MessageModelPropertiesList.Clear();
             MessageToAppear = "";
             foreach (var response in (_firebaseDatabaseConnection._client.Get("Messages/")).ResultAs<MessageModel[]>())
             {
                 if (response != null)
                     MessageModelPropertiesList.Add(response);
             }



         }*/


        /*void DisplayTheList()
        {
            foreach (var MessageModel in MessageModelPropertiesList)
            {
                if (MessageModel != null)
                {
                    MessageToAppear += MessageModel.Sender + " says " + MessageModel.MessageText + " at " + MessageModel.Timestamp + "\n";
                }
            }
        }*/

        /*        void UpdateTB(MessageModel message)
        {
            MessageToAppear = "";
            if (message != null)
            {
                MessageToAppear += message.Sender + " says " + message.MessageText + " at " + message.Timestamp + "\n";
            }
        }*/


    }
}
