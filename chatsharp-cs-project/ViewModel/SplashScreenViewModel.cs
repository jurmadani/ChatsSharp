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
    class SplashScreenViewModel : ViewModelBase
    {

        public ICommand NavigateToLogin { get; }
        public SplashScreenViewModel(INavigationService loginNavigationService) {
            this.NavigateToLogin = new NavigateCommand(loginNavigationService);
        }


    }
}
