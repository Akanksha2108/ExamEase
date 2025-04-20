import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User?> signInWithGoogle() async {
    try {
      // Attempt to sign in with Google account
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        // Obtain Google authentication credentials
        final GoogleSignInAuthentication googleAuth = await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        // Sign in to Firebase with Google credentials
        final UserCredential userCredential = await _auth.signInWithCredential(credential);
        return userCredential.user; // Return the signed-in user
      }
    } catch (e) {
      print("Error signing in with Google: $e"); // Handle sign-in errors
    }
    return null; // Return null if sign-in fails
  }

  Future<void> signOut() async {
    try {
      // Sign out from Firebase
      await _auth.signOut();
      // Sign out from Google Sign-In
      await _googleSignIn.signOut();
    } catch (e) {
      print("Error signing out: $e"); // Handle sign-out errors
    }
  }
}
