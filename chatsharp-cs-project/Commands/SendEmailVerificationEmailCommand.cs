using chatsharp_cs_project.Stores;
using MVVMEssentials.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace chatsharp_cs_project.Commands
{
    public class SendEmailVerificationEmailCommand : AsyncCommandBase
    {
        private readonly AuthenticationStore _authenticationStore;

        public SendEmailVerificationEmailCommand(AuthenticationStore authenticationStore)
        {
            _authenticationStore = authenticationStore;
        }


        protected override async Task ExecuteAsync(object parameter)
        {
            try
            {
                await _authenticationStore.SendEmailVerificationEmail();
                MessageBox.Show("Succesfully sent email verification email. Check your email to verify.", "Succes", MessageBoxButton.OK,MessageBoxImage.Information);
            }
            catch (Exception)
            {
                MessageBox.Show("Failed to send email verification email. Please try again later.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            
        }
    }
}
