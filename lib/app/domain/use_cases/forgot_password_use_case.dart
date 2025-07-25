import 'package:base_project_flutter/app/core/base/base_usecase.dart';
import 'package:base_project_flutter/app/domain/entities/user.dart';
import 'package:base_project_flutter/app/domain/repositories/auth_repository.dart';

class ForgotPasswordUseCase extends BaseUseCase<User> {
  final AuthRepository repository;

  ForgotPasswordUseCase(this.repository);

  @override
  Future<User> build() {
    return repository.forgotPassword();
  }
}
