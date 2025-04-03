import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes_app/services/shared_preference.dart';

class AuthServices {
  static Future<String> signIn() async {
    String result = '';
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInAnonymously();
      print(
          '=============${userCredential.user?.uid}====================================');
      if (userCredential.user?.uid != null) {
        await Preferences.addUserIdToPreferences(userCredential.user!.uid);
        result = "success";
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }
}
