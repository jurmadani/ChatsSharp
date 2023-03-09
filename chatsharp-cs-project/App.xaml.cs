using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using Firebase.Auth;
using chatsharp_cs_project.ViewModel;
using MVVMEssentials.Stores;
using MVVMEssentials.ViewModels;
using MVVMEssentials.Services;
using chatsharp_cs_project.View;
using chatsharp_cs_project.Stores;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;

namespace chatsharp_cs_project
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {

        private readonly IHost _host;



        public App()
        {


            _host = Host.CreateDefaultBuilder().ConfigureServices((context, ServiceCollection) =>
            {
                string FireBaseApiKey = context.Configuration.GetValue<string>("FIREBASE_API_KEY");

                ServiceCollection.AddSingleton(new FirebaseAuthProvider(new Firebase.Auth.FirebaseConfig(FireBaseApiKey)));

                ServiceCollection.AddSingleton<NavigationStore>();
                ServiceCollection.AddSingleton<ModalNavigationStore>();
                ServiceCollection.AddSingleton<AuthenticationStore>();

                ServiceCollection.AddSingleton<NavigationService<RegisterViewModel>>(
                    (services) => new NavigationService<RegisterViewModel>(services.GetRequiredService<NavigationStore>(),
                    () => new RegisterViewModel(services.GetRequiredService<FirebaseAuthProvider>(),
                    services.GetRequiredService<NavigationService<LoginViewModel>>(),
                    services.GetRequiredService<AuthenticationStore>())));

                ServiceCollection.AddSingleton<NavigationService<LoginViewModel>>(
                    (services) => new NavigationService<LoginViewModel>(services.GetRequiredService<NavigationStore>(),
                    () => new LoginViewModel(services.GetRequiredService<AuthenticationStore>(),
                    services.GetRequiredService<NavigationService<RegisterViewModel>>(),
                    services.GetRequiredService<NavigationService<HomeViewModel>>())));

                ServiceCollection.AddSingleton<NavigationService<HomeViewModel>>(
                    (services) => new NavigationService<HomeViewModel>(services.GetRequiredService<NavigationStore>(),
                    () => new HomeViewModel(services.GetRequiredService<AuthenticationStore>())));

                ServiceCollection.AddSingleton<NavigationService<SplashScreenViewModel>>(
                   (services) => new NavigationService<SplashScreenViewModel>(services.GetRequiredService<NavigationStore>(),
                   () => new SplashScreenViewModel(services.GetRequiredService<NavigationService<LoginViewModel>>())));

                ServiceCollection.AddSingleton<ViewProfileViewModel>(
                    (services) => new ViewProfileViewModel(services.GetRequiredService<AuthenticationStore>()));



                ServiceCollection.AddSingleton<MainViewModel>();

                ServiceCollection.AddSingleton<MainWindow>((services) => new MainWindow()
                {
                    DataContext = services.GetRequiredService<MainViewModel>()

                });


            }).Build();
        }

        protected override void OnStartup(StartupEventArgs e)
        {

            var navigationService = _host.Services.GetRequiredService<NavigationService<LoginViewModel>>(); // WHEN APP IS FINISHED -> THE ONSTARTUP SHOULD INVOKE SPLASHSCREENVIEWMODEL 
            navigationService.Navigate();

            MainWindow = _host.Services.GetRequiredService<MainWindow>();
            MainWindow.Show();

            

            base.OnStartup(e);
        }



    }
}
