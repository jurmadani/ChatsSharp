using chatsharp_cs_project.Stores;
using MVVMEssentials.Commands;
using MVVMEssentials.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Security;
using System.Text;
using System.Threading.Tasks;

namespace chatsharp_cs_project.Commands
{
    public class LogoutCommand : CommandBase
    {
        private readonly AuthenticationStore _authenticationStore;
        private readonly INavigationService _loginNavigationService;

        public LogoutCommand(AuthenticationStore authenticationStore, INavigationService loginNavigationService)
        {
            _authenticationStore = authenticationStore;
            _loginNavigationService= loginNavigationService;
        }

        public override void Execute(object parameter)
        {
            _authenticationStore.Logout();
            _loginNavigationService.Navigate();
        }
    }
}
