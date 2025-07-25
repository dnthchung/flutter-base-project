import 'package:base_project_flutter/app/domain/entities/user.dart';
import 'package:base_project_flutter/app/domain/repositories/auth_repository.dart';

// Fetch data from data source: API or Database local
class AuthRepositoryImpl extends AuthRepository {
  // final API api;
  // final Database database;

  @override
  Future<User> signInWithEmailAndPassword(String email, String password) {
    return Future.delayed(const Duration(seconds: 2), () {
      return User(
        id: "1",
        name: 'John Doe',
        email: email,
        password: password,
      );
    });
  }

  @override
  Future<User> forgotPassword() {
    return Future.delayed(const Duration(seconds: 2), () {
      return User(id: "1", name: 'John Doe', email: '', password: '');
    });
  }
}
