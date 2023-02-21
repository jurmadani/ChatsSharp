using chatsharp_cs_project.ViewModel;
using Firebase.Auth;
using MVVMEssentials.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace chatsharp_cs_project.Commands
{
    class LoginCommand : AsyncCommandBase
    {

        private readonly LoginViewModel _loginViewModel;
        private readonly FirebaseAuthProvider _firebaseAuthProvider;

        public LoginCommand(LoginViewModel loginViewModel, FirebaseAuthProvider firebaseAuthProvider)
        {
            _loginViewModel = loginViewModel;
            _firebaseAuthProvider = firebaseAuthProvider;
        }

        protected override async Task ExecuteAsync(object parameter)
        {
            try
            {
                await _firebaseAuthProvider.SignInWithEmailAndPasswordAsync(_loginViewModel.Email, _loginViewModel.Password);
                MessageBox.Show("Sucessfully logged in!", "Success",MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception)
            {
                MessageBox.Show("Login failed. Please check your information", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
