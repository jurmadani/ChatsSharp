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

namespace chatsharp_cs_project.ViewModel
{
    class MessagesViewModel : ViewModelBase
    {
        public FirebaseDatabaseConnectionStore _firebaseDatabaseConnection;
        public List<MessageModel> messages { get; set; }

        public ObservableCollection<MessageModel> _messages;
        public ICommand ButtonClick => new ViewModelCommand(PerformButtonClick);
        private int LastMessageIndex { get; set; }

        private string _messageFromTextBox;
        private string _messageToAppear;

        public List<MessageModel> MessageModelPropertiesList = new List<MessageModel>();

        public ObservableCollection<UserModel> Users { get; set; }
        public RelayCommand TestCommand { get; private set; }


        public MessagesViewModel()
        {
            _firebaseDatabaseConnection = new FirebaseDatabaseConnectionStore();
            messages = new List<MessageModel>();
            _messages = new ObservableCollection<MessageModel>();
            Users = new ObservableCollection<UserModel>();
            TestCommand = new RelayCommand(ExecuteTestCommand);


            for (int i = 0;i < 2; i++)
            {
                UserModel user = new UserModel(i.ToString(), $"Test nr.{i}","test",i,"test-pn","test@yahoo.com");
                Users.Add(user);
        
            }

            //LiveCall();
            //SetListener();
            //generate();
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

        public async void LiveCall()
        {
            while (true)
            {
                MessageModelPropertiesList.Clear();
                FirebaseResponse response = await _firebaseDatabaseConnection._client.GetAsync("Messages/");
                string json = response.Body.ToString();
                if (!string.IsNullOrEmpty(json))
                {
                    var jsonData = JsonConvert.DeserializeObject<dynamic>(json);
                    foreach (var data in jsonData)
                    {
                        if (data != null && (string)data["Receiver"] == "dani")
                        {
                            var sender = (string)data["Sender"];
                            var receiver = (string)data.Receiver;
                            var text = (string)data.MessageText;
                            var timestamp = (string)data.Timestamp;
                            MessageModel message = new MessageModel(receiver, sender, text, timestamp);
                            MessageModelPropertiesList.Add(message);
                        }

                    }

                }
                RefreshList_2();
            }
        }



        public int GetLastIndexOfMessages()
        {
            LastMessageIndex = 1;

            foreach (var response in (_firebaseDatabaseConnection._client.Get("Messages/")).ResultAs<MessageModel[]>())
            {
                if (response != null)
                    ++LastMessageIndex;
            }
            return LastMessageIndex;
        }

        private async void PerformButtonClick(object commandParameter)
        {
            DateTime now = DateTime.Now;
            CultureInfo.CurrentCulture = CultureInfo.InvariantCulture;
            MessageModel MessageModel = new MessageModel("dani", "gabi", MessageFromTextBox, now.ToString());
            await _firebaseDatabaseConnection._client.SetAsync("Messages/" + GetLastIndexOfMessages().ToString(), MessageModel);
            MessageFromTextBox = "";

        }

        private void ExecuteTestCommand()
        {
       
        }

        private void RefreshList_2()
        {
            MessageToAppear = "";
            foreach (var MessageModel in MessageModelPropertiesList)
            {
                if (MessageModel != null)
                {
                    MessageToAppear += MessageModel.Sender + " says " + MessageModel.MessageText + " at " + MessageModel.Timestamp + "\n";
                }
            }
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
