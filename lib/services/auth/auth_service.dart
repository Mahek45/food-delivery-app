import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
//get instance of firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

// get current user
  User? getcurrentUser() {
    return _firebaseAuth.currentUser;
  }

// sign in
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    try {
      //try sign user in
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

      return userCredential;
    }

// catch any errors
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

// sign up
  Future<UserCredential> signupWithEmailAndPassword(String email, String password) async {
    try {
      //try sign user up
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

      return userCredential;
    }

// catch any errors
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

// sign out
Future<void> signOut() async{
  return await _firebaseAuth.signOut();
}
}
