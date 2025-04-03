
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static Future<String?> getUserId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? userId = preferences.getString('userId');
    if (userId != null && userId.isNotEmpty) {
      return userId;
    } else {
      return null;
    }
  }

  static Future<void> addUserIdToPreferences(String uid) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('userId', uid);
  }
}
