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
    class RegisterCommand : AsyncCommandBase
    {
        private readonly RegisterViewModel _registerViewModel;
        private readonly FirebaseAuthProvider _firebaseAuthProvider;

        public RegisterCommand(RegisterViewModel registerViewModel, FirebaseAuthProvider firebaseAuthProvider)
        {
            _registerViewModel = registerViewModel;
            _firebaseAuthProvider = firebaseAuthProvider;
        }

        protected override async Task ExecuteAsync(object parameter)
        {
           string password = _registerViewModel.Password;
           string confirmPassword = _registerViewModel.ConfirmPassword;

           if(password != confirmPassword)
            {
                MessageBox.Show("Password and confirm password must match","Error",MessageBoxButton.OK,MessageBoxImage.Error);
                return;
            }
            try
            {
                await _firebaseAuthProvider.CreateUserWithEmailAndPasswordAsync(_registerViewModel.Email, _registerViewModel.Password);
                MessageBox.Show("Succesfully registered", "Succes", MessageBoxButton.OK, MessageBoxImage.Information);

                //navigate to login

            }
            catch(Exception)
            {
                MessageBox.Show("Registration failed. Please try again later.", "Error", MessageBoxButton.OK,MessageBoxImage.Error);
            }
        }
    }
}
