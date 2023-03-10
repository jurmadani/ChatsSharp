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
    public class SendPasswordResetEmailCommand : AsyncCommandBase
    {

        private readonly FirebaseAuthProvider _firebaseAuthProvider;
        private readonly INavigationService _loginNavigationService;
        private readonly PasswordResetViewModel _viewModel;

        public SendPasswordResetEmailCommand(FirebaseAuthProvider firebaseAuthProvider, INavigationService loginNavigationService, PasswordResetViewModel viewModel)
        {
            _firebaseAuthProvider = firebaseAuthProvider;
            _loginNavigationService = loginNavigationService;
            _viewModel = viewModel;
        }
        protected override async Task ExecuteAsync(object parameter)
        {

            string email = _viewModel.Email;

            try
            {
                await _firebaseAuthProvider.SendPasswordResetEmailAsync(email);

                MessageBox.Show("Successfully sent password reset email. Check your email to finish resetting your password", "Succes", MessageBoxButton.OK, MessageBoxImage.Information);

                _loginNavigationService.Navigate();

            }
            catch (Exception)
            {
                MessageBox.Show("Failed to send password reset email. Please try again later.", "Error", MessageBoxButton.OK, MessageBoxImage.Error); 
            }
        }
    }
}
