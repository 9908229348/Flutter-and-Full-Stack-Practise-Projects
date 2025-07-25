import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static AuthService? _instance;

  static AuthService get instance {
    _instance ??= AuthService();
    return _instance!;
  }

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> verifyPhoneSendOtp(String phone,
      {required void Function(PhoneAuthCredential)? completed,
      required void Function(FirebaseAuthException)? failed,
      required void Function(String, int?)? codeSent,
      required void Function(String)? codeAutoRetrievalTimeout}) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: completed!,
      verificationFailed: failed!,
      codeSent: codeSent!,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout!,
    );
  }

  Future<String?> verifyAndLogin(
      String verificationId, String smsCode, String phone) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
    final authCredential = await _auth.signInWithCredential(credential);

    if (authCredential.user != null) {
      final uid = authCredential.user!.uid;
      final userSanp =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      if (!userSanp.exists) {
        await FirebaseFirestore.instance.collection('users').doc(uid).set({
          'uid': uid,
          'phone': phone,
          'createdAt': DateTime.now(),
          'isVerified': false,
        });
      }
      return uid;
    } else {
      return null;
    }
  }

  Future<String> getCredential(PhoneAuthCredential credential) async {
    final authCredential = await _auth.signInWithCredential(credential);
    return authCredential.user!.uid;
  }

  // Future<bool?> logOut() async {
  //   await _auth.signOut();
  //   UserRepository.instance.userNotifier.value = null;
  //   // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
  //   UserRepository.instance.userNotifier.notifyListeners();

  //   return true;
  // }
}
