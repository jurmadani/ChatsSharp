using chatsharp_cs_project.Commands;
using chatsharp_cs_project.Model;
using chatsharp_cs_project.Stores;
using GalaSoft.MvvmLight.CommandWpf;
using MVVMEssentials.Commands;
using MVVMEssentials.Services;
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
        public RelayCommand NavigateToEditProfileViewCommand { get; set; }

        private ViewModelBase _currentChildView;

        public ViewModelBase CurrentChildView
        {
            get => _currentChildView;
            set
            {
                _currentChildView = value;
                OnPropertyChanged(nameof(CurrentChildView));
            }
        }

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
            NavigateToEditProfileViewCommand = new RelayCommand(ExecuteShowEditProfileViewCommand);
            SendEmailVerificationEmailCommand = new SendEmailVerificationEmailCommand(authenticationStore);
            LoadDataAsync();
        }

        private void ExecuteShowEditProfileViewCommand()
        {
            MessageBox.Show("Feature coming soon :)", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
        }

    }
}
