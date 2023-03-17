using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Input;

namespace chatsharp_cs_project.View
{
    /// <summary>
    /// Interaction logic for SplashScreenView.xaml
    /// </summary>
    public partial class SplashScreenView : UserControl
    {
        public SplashScreenView()
        {
            InitializeComponent();
            Loaded += SplashScreenView_Loaded;
            Mouse.OverrideCursor = System.Windows.Input.Cursors.Wait;
        }


        public async void SplashScreenView_Loaded(object sender, RoutedEventArgs e)
        {
            await LoadContentAsync();
        }
        public async Task LoadContentAsync()
        {
            // Simulate loading content with a delay
            for (int i = 0; i <= 100; i++)
            {
                LoadingBarSplashScreen.Value = i;
                await Task.Delay(19);
                if (LoadingBarSplashScreen.Value == 100)
                {
                    await Task.Delay(250);
                    GoToLoginButton.Command.Execute(GoToLoginButton.CommandParameter);
                    Mouse.OverrideCursor = System.Windows.Input.Cursors.Arrow;

                }
            }
            
        }

    }
}
