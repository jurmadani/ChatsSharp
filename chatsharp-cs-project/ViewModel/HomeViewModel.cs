using chatsharp_cs_project.Commands;
using chatsharp_cs_project.Stores;
using FontAwesome.Sharp;
using MVVMEssentials.Services;
using MVVMEssentials.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace chatsharp_cs_project.ViewModel
{ 
    class HomeViewModel : ViewModelBase
    {


        private readonly AuthenticationStore _authenticationStore;
        private readonly INavigationService _loginNavigationService;

        public string Username => _authenticationStore.CurrentUser?.Email ?? "Unknown";
        private ViewModelBase _currentChildView;

        public ViewModelBase CurrentChildView { get => _currentChildView;
            set
            {
                _currentChildView= value;
                OnPropertyChanged(nameof(CurrentChildView));
            } }
        public ICommand ShowHomeViewCommand { get; }
        public ICommand ShowViewProfileViewCommand { get; }
        public ICommand ShowFriendsViewCommand { get; }
        public ICommand ShowMessagesViewCommand { get; }
        public ICommand ShowGroupsViewCommand { get; }
        public ICommand ShowSettingsViewCommand { get; }
        public ICommand LogoutCommand { get; }

        public HomeViewModel(AuthenticationStore authenticationStore,INavigationService loginNavigationService)
        {
            _authenticationStore = authenticationStore;
            ShowHomeViewCommand = new ViewModelCommand(ExecuteShowHomeViewCommand);
            ShowViewProfileViewCommand = new ViewModelCommand(ExecuteShowViewProfileCommand);
            ShowFriendsViewCommand = new ViewModelCommand(ExecuteShowFriendsViewCommand);
            ShowMessagesViewCommand = new ViewModelCommand(ExecuteShowMessagesViewCommand);
            ShowGroupsViewCommand = new ViewModelCommand(ExecuteShowGroupsViewCommand);
            ShowSettingsViewCommand = new ViewModelCommand(ExecuteShowSettingsViewCommand);
            LogoutCommand = new LogoutCommand(authenticationStore,loginNavigationService);
            ExecuteShowHomeViewCommand(null);
        }

        private void LogoutFunction(object obj)
        {
            MessageBox.Show("LOGOUT SUCCESFULLY");
            Application.Current.Shutdown();
        }

        private void ExecuteShowHomeViewCommand(object obj)
        {
            CurrentChildView = new HomePageViewModel();
        }

        private void ExecuteShowViewProfileCommand(object obj)
        {
            CurrentChildView = new ViewProfileViewModel(_authenticationStore);
        }

        private void ExecuteShowFriendsViewCommand(object obj)
        {
            CurrentChildView = new FriendsViewModel();
        }

        private void ExecuteShowMessagesViewCommand(object obj)
        {
            CurrentChildView = new MessagesViewModel();
        }

        private void ExecuteShowGroupsViewCommand(object obj)
        {
            CurrentChildView = new GroupsViewModel();
        }

        private void ExecuteShowSettingsViewCommand(object obj)
        {
            CurrentChildView = new SettingsViewModel();
        }


    }
}
