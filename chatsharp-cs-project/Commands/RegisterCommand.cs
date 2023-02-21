using chatsharp_cs_project.ViewModel;
using Firebase.Auth;
using MVVMEssentials.Commands;
using MVVMEssentials.Services;
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
        private readonly INavigationService _loginNavigationService;

        public RegisterCommand(RegisterViewModel registerViewModel, FirebaseAuthProvider firebaseAuthProvider,INavigationService loginNavigationSerivce)
        {
            _registerViewModel = registerViewModel;
            _firebaseAuthProvider = firebaseAuthProvider;
            _loginNavigationService =  loginNavigationSerivce;
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

                _loginNavigationService.Navigate();

            }
            catch(Exception)
            {
                MessageBox.Show("Registration failed. Please check your information or try again later.", "Error", MessageBoxButton.OK,MessageBoxImage.Error);
            }
        }
    }
}
