using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using chatsharp_cs_project.ViewModel;
using Firebase.Auth;

namespace chatsharp_cs_project.Stores
{
    public class AuthenticationStore
    {
        private readonly FirebaseAuthProvider _firebaseAuthProvider;

        public AuthenticationStore(FirebaseAuthProvider firebaseAuthProvider)
        {
            _firebaseAuthProvider= firebaseAuthProvider;
        }

        private FirebaseAuthLink _currentFirebaseAuthLink;
        public User CurrentUser => _currentFirebaseAuthLink?.User;

        public async Task Login(string email,string password)
        {
            _currentFirebaseAuthLink = await _firebaseAuthProvider.SignInWithEmailAndPasswordAsync(email,password);
        }

        public async Task SendEmailVerificationEmail()
        {
            if(_currentFirebaseAuthLink == null) {
                throw new Exception("User is not authenticated");
            
            }
            await _firebaseAuthProvider.SendEmailVerificationAsync(_currentFirebaseAuthLink.FirebaseToken);
        }

    }
}
