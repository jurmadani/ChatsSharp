using chatsharp_cs_project.Model;
using chatsharp_cs_project.Stores;
using chatsharp_cs_project.ViewModel;
using Firebase.Auth;
using FireSharp.Response;
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
        private readonly AuthenticationStore _authenticationStore;
        private readonly CheckUsernameAvailabilityCommand _checkUsernameAvailabilityCommand;

        public RegisterCommand(RegisterViewModel registerViewModel, FirebaseAuthProvider firebaseAuthProvider, INavigationService loginNavigationService, AuthenticationStore authenticationStore)
        {
            _registerViewModel = registerViewModel;
            _firebaseAuthProvider = firebaseAuthProvider;
            _loginNavigationService = loginNavigationService;
            _authenticationStore = authenticationStore;
            _checkUsernameAvailabilityCommand = new CheckUsernameAvailabilityCommand();
        }

        protected override async Task ExecuteAsync(object parameter)
        {
            string password = _registerViewModel.Password;
            string confirmPassword = _registerViewModel.ConfirmPassword;

            if (password != confirmPassword)
            {
                MessageBox.Show("Password and confirm password must match", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            if (_checkUsernameAvailabilityCommand.IsUsernameAvailable(_registerViewModel.Username) == true)
            {
                try
                {
                    await _firebaseAuthProvider.CreateUserWithEmailAndPasswordAsync(_registerViewModel.Email, _registerViewModel.Password, _registerViewModel.Username);
                    FirebaseDatabaseConnectionStore firebaseDatabaseConnection = new FirebaseDatabaseConnectionStore();
           
                    UserModel User = new UserModel("UIDNotSet" + _registerViewModel.Username + "___", _registerViewModel.Username, "Not set yet", 0, "Not set yet", _registerViewModel.Email);

                    if (firebaseDatabaseConnection.CheckForConnection() == 1)
                    {
                        try
                        {
                            await firebaseDatabaseConnection.InsertUserIntoDatabase(User);
                            await _authenticationStore.UpdateUserIDInFirebaseDatabase(User, _registerViewModel.Email, _registerViewModel.Password, _registerViewModel.Username);

                          /*  MessageModel messageModel1 = new MessageModel("dani", "gabi", "ceau", "11:57AM");
                            await firebaseDatabaseConnection.TestMessages(messageModel1, 1);*/




                            MessageBox.Show("Succesfully registered", "Succes", MessageBoxButton.OK, MessageBoxImage.Information);
                        }
                        catch (Exception)
                        {
                            MessageBox.Show("Registration failed due to connection with the server, try again later.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }

                    _loginNavigationService.Navigate();

                }
                catch (Exception)
                {
                    MessageBox.Show("Email already exists.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show("Username already exists.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
