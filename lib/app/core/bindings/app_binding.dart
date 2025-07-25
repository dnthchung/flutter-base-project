import 'package:base_project_flutter/app/data/repositories/auth_repository_impl.dart';
import 'package:base_project_flutter/app/domain/repositories/auth_repository.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    // Binding repositories
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl());
  }
}
