import 'dart:convert';

import '../models/services/user.dart';
import 'package:http/http.dart' as http;

class UsersService {
  static Future<List<User>> fetchUsers() async {
    try {
      final httpsUri = Uri(
        scheme: 'https',
        host: 'jsonplaceholder.typicode.com',
        path: 'users',
      );
      var response = await http.get(httpsUri);
      print('---response---${response.body}----------------------------------');
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => User.fromMap(e)).toList();
    } catch (e) {
      print('------${e.toString()}----------------------------');
      throw Exception(e);
    }
  }
}
