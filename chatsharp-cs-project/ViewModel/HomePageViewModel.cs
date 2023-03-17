using GalaSoft.MvvmLight.Command;
using MVVMEssentials.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace chatsharp_cs_project.ViewModel
{
    class HomePageViewModel : ViewModelBase
    {
        public ICommand VisitLinkedinCommand { get; set; }
        public HomePageViewModel()
        {
            VisitLinkedinCommand = new RelayCommand<object>((uri) =>
            {
                string myUri = !uri.ToString().Contains("https://") && !uri.ToString().Contains("http://") ? "http://" + uri.ToString() : uri.ToString();
                System.Diagnostics.Process.Start(new System.Diagnostics.ProcessStartInfo(myUri) { UseShellExecute = true });
            });
        }
    }
}
