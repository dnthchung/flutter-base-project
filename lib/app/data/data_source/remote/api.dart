import 'package:base_project_flutter/app/data/models/user_model.dart';

class Api {
  // Fetch from APi
  static Future<UserModel> get(String path) async {
    return UserModel(id: 1, name: "name", email: "email");
  }
}
