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

                ServiceCollection.AddSingleton(new FirebaseAuthProvider(new FirebaseConfig(FireBaseApiKey)));

                ServiceCollection.AddSingleton<MainWindow>((services) => new MainWindow());

            }).Build();
        }

        protected override void OnStartup(StartupEventArgs e)
        {
            MainWindow = _host.Services.GetRequiredService<MainWindow>();
            MainWindow.Show();

            FirebaseAuthProvider firebaseAuthProvider = _host.Services.GetRequiredService<FirebaseAuthProvider>();
            firebaseAuthProvider.CreateUserWithEmailAndPasswordAsync("daniel@yahoo.com", "Test123!");

            base.OnStartup(e);
        }



    }
}
