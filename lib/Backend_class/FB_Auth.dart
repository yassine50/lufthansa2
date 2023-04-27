

import 'package:firebase_auth/firebase_auth.dart';

class FB_Auth {
  bool loading = false;
  static String error = '';

  Future<int> signIn(String email, String password) async {
    bool verif = true;
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
   //   userCredential.user!.sendEmailVerification();

      return 1 ;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return -11;
      } else if (e.code == 'wrong-password') {
        return -12;
      }
    }
    return -1;
  }
  Future<bool> signUp(String email, String password) async {
    bool verif = true;
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        error = 'weak-password';
        // print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        error = 'email-already-in-use';
        // print('The account already exists for that email.');
      } else if (e.code == 'invalid-email') {
        error = 'invalid-email';
        print('invalid-email');
      }
      verif = false;
    } catch (e) {
      print(e);
      verif = false;
    }
    return verif;
  }


  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  Future Change_password(String password) async {
    bool verif = true;
    User? user = await FirebaseAuth.instance.currentUser;
    user?.updatePassword(password).then((_) {
      print("Successfully changed password");
    }).catchError((error) {
      verif = false;
      print("Password can't be changed" + error.toString());
      //This might happen, when the wrong password is in, the user isn't found, or if the user hasn't logged in recently.
    });
    return verif;
  }
}
