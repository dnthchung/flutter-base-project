import 'package:base_project_flutter/app/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<User> forgotPassword();
}
