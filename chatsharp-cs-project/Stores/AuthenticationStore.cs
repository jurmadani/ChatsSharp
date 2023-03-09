using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using chatsharp_cs_project.Model;
using chatsharp_cs_project.ViewModel;
using Firebase.Auth;
using FireSharp.Response;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace chatsharp_cs_project.Stores
{
    public class AuthenticationStore
    {
        private readonly FirebaseAuthProvider _firebaseAuthProvider;

        public AuthenticationStore(FirebaseAuthProvider firebaseAuthProvider)
        {
            _firebaseAuthProvider= firebaseAuthProvider;
        }

        private FirebaseAuthLink? _currentFirebaseAuthLink;
        public User CurrentUser => _currentFirebaseAuthLink?.User;
        public async Task Login(string email,string password)
        {
            _currentFirebaseAuthLink = await _firebaseAuthProvider.SignInWithEmailAndPasswordAsync(email,password);
              
        }

        public void Logout()
        {
            _currentFirebaseAuthLink = null;
        }

        public async Task SendEmailVerificationEmail()
        {
            if(_currentFirebaseAuthLink == null) {
                throw new Exception("User is not authenticated");
            
            }
            await _firebaseAuthProvider.SendEmailVerificationAsync(_currentFirebaseAuthLink.FirebaseToken);
        }

        public async Task UpdateUserIDInFirebaseDatabase(UserModel userModel, string email, string password, string username)
        {
            FirebaseDatabaseConnectionStore _firebaseDatabaseConnection = new FirebaseDatabaseConnectionStore();

            _currentFirebaseAuthLink = await _firebaseAuthProvider.SignInWithEmailAndPasswordAsync(email, password);
            userModel.Id = CurrentUser.LocalId;
            await _firebaseDatabaseConnection._client.UpdateAsync("Users/" + username, userModel);
  

        }

        public UserModel GenerateUserModel(string username)
        {
            FirebaseDatabaseConnectionStore _firebaseDatabaseConnection = new FirebaseDatabaseConnectionStore();
            FirebaseResponse Response = _firebaseDatabaseConnection._client.Get("Users/" + username);
            UserModel NewUser = Response.ResultAs<UserModel>();
            return NewUser;
        }

    }
}
