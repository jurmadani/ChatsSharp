using chatsharp_cs_project.Commands;
using Firebase.Auth;
using MVVMEssentials.Commands;
using MVVMEssentials.Services;
using MVVMEssentials.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace chatsharp_cs_project.ViewModel
{
    public class PasswordResetViewModel : ViewModelBase
    {
        public string _email;
        public string Email
        {
            get { return _email; }
            set { _email = value;
                   OnPropertyChanged(nameof(Email));}
        }

        public ICommand SendPasswordResetEmailCommand { get; }
        public ICommand NavigateLoginCommand { get; }

        public PasswordResetViewModel(FirebaseAuthProvider firebaseAuthProvider,INavigationService loginNavigationService)
        {
            SendPasswordResetEmailCommand = new SendPasswordResetEmailCommand(firebaseAuthProvider,loginNavigationService,this);
            NavigateLoginCommand = new NavigateCommand(loginNavigationService);
        }
    }
}
