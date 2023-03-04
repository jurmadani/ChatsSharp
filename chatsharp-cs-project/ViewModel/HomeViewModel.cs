using chatsharp_cs_project.Commands;
using chatsharp_cs_project.Stores;
using FontAwesome.Sharp;
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
        public string Username => _authenticationStore.CurrentUser?.Email ?? "Unknown";
        private ViewModelBase _currentChildView;
        private string _caption;
        private IconChar _icon;

        public ViewModelBase CurrentChildView { get => _currentChildView;
            set
            {
                _currentChildView= value;
                OnPropertyChanged(nameof(CurrentChildView));
            } }
        public string Caption { get => _caption; 
            set
            {
                _caption = value;
                OnPropertyChanged(nameof(Caption));

            }
        }
        public IconChar Icon { get => _icon; set
            {
                _icon= value;
                OnPropertyChanged(nameof(Icon));
            }
        }
        public ICommand ShowHomeViewCommand { get; }
        public ICommand ShowFriendsViewCommand { get; }

        public HomeViewModel(AuthenticationStore authenticationStore)
        {
            _authenticationStore = authenticationStore;
            ShowHomeViewCommand = new ViewModelCommand(ExecuteShowHomeViewCommand);
            ExecuteShowHomeViewCommand(null);
        }

        private void ExecuteShowHomeViewCommand(object obj)
        {
            CurrentChildView = new HomePageViewModel();
            Caption = "Home";
            Icon = IconChar.Home;
        }

    }
}
