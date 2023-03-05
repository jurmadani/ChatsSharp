using chatsharp_cs_project.Commands;
using chatsharp_cs_project.Stores;
using MVVMEssentials.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace chatsharp_cs_project.ViewModel
{
    class ViewProfileViewModel : ViewModelBase
    {

        private readonly AuthenticationStore _authenticationStore;
        public string Username => _authenticationStore.CurrentUser?.DisplayName ?? string.Empty;
        public string Email => _authenticationStore.CurrentUser.Email ?? string.Empty;
        public bool IsEmailVerified => _authenticationStore.CurrentUser?.IsEmailVerified ?? false;

        public ICommand SendEmailVerificationEmailCommand { get; }

        public ViewProfileViewModel(AuthenticationStore authenticationStore)
        {
            _authenticationStore = authenticationStore;
            SendEmailVerificationEmailCommand = new SendEmailVerificationEmailCommand(authenticationStore);
        }
        public ViewProfileViewModel()
        {

        }
    }
}
