using chatsharp_cs_project.Commands;
using MVVMEssentials.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using chatsharp_cs_project.Commands;
using Firebase.Auth;
using MVVMEssentials.Commands;
using chatsharp_cs_project.Stores;

namespace chatsharp_cs_project.ViewModel
{
    class RegisterViewModel : ViewModelBase
    {
        private string _email;
        private string _username;
        private string _password;
        private string _confirmPassword;
        public string Email
        {
            get { return _email; }
            set { _email = value;
                   OnPropertyChanged(nameof(Email));}
        }
  
        public string Username
        {
            get { return _username; }
            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
            }
        }
       
        public string Password
        {
            get { return _password; }
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }
        public string ConfirmPassword
        {
            get { return _confirmPassword; }
            set { _confirmPassword = value;
            OnPropertyChanged(nameof(ConfirmPassword));}
        }
        public ICommand SubmitCommand { get;}
        public ICommand NavigateLoginCommand { get;}

        public RegisterViewModel(FirebaseAuthProvider firebaseAuthProvider, MVVMEssentials.Services.INavigationService loginNavigationService,AuthenticationStore authenticationStore)
        {
            SubmitCommand = new RegisterCommand(this,firebaseAuthProvider,loginNavigationService,authenticationStore);
            NavigateLoginCommand = new NavigateCommand(loginNavigationService);
        }
    }
}
