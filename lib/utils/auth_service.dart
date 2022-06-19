import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  /**
   * Function to sign Up with email and password
   */
  static Future signUp(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  /**
   * Function to sign in with email and password
   */

  static Future signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  /**
   * Function to sign out
   */
  static Future signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
