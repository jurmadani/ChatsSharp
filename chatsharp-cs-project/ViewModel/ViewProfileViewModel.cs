using chatsharp_cs_project.Commands;
using chatsharp_cs_project.Model;
using chatsharp_cs_project.Stores;
using MVVMEssentials.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace chatsharp_cs_project.ViewModel
{
    class ViewProfileViewModel : ViewModelBase
    {

        private readonly AuthenticationStore _authenticationStore;
        public string Username => _authenticationStore.CurrentUser?.DisplayName ?? string.Empty;
 
        public bool IsEmailVerified => _authenticationStore.CurrentUser?.IsEmailVerified ?? false;

        public string PhoneNumber{get; set;}
        public int FriendsNumber{get; set;}
        public string JobTitle{get; set;}

        public string Email { get; set; }


        private UserModel _user;
        public UserModel User
        {
            get { return _user; }
            set
            {
                _user = value;
                OnPropertyChanged(nameof(User));
            }
        }


        public UserModel GetUserAsync(string username)
        {
            User = _authenticationStore.GenerateUserModel(username);
            return User;
        }

        public void LoadDataAsync()
        {
            User = GetUserAsync(Username);
            PhoneNumber = User.PhoneNumber;
            FriendsNumber = User.FriendsNumber;
            JobTitle = User.JobTitle;
            Email = User.Email;


        }


        public ICommand SendEmailVerificationEmailCommand { get; }

        public ViewProfileViewModel(AuthenticationStore authenticationStore)
        {
            _authenticationStore = authenticationStore;
            SendEmailVerificationEmailCommand = new SendEmailVerificationEmailCommand(authenticationStore);
            LoadDataAsync();
        }
       
    }
}
