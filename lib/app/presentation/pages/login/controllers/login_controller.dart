import 'package:base_project_flutter/app/core/base/base_controller.dart';
import 'package:base_project_flutter/app/core/base/base_get_view.dart';
import 'package:base_project_flutter/app/core/utils/navigation_utils.dart';
import 'package:base_project_flutter/app/domain/entities/user.dart';
import 'package:base_project_flutter/app/domain/use_cases/login.dart';
import 'package:base_project_flutter/app/presentation/validators/index.dart';

class LoginController extends BaseController {
  final LoginUseCase _loginUseCase;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginController(this._loginUseCase);

  final _loginResult = Rxn<User>();
  User? get loginResult => _loginResult.value;

  Future<void> login() async {
    final emailError = EmailValidator.validate(emailController.text);
    final passwordError = PasswordValidator.validate(passwordController.text);

    // Validate
    if (emailError != null || passwordError != null) {
      return;
    }

    // Handle login
    showLoadingDialog();
    final loginPrams = LoginParams(
        email: emailController.text, password: passwordController.text);

    final result = await _loginUseCase.execute(loginPrams);

    if (result.isSuccess) {
      _loginResult.value = result.data;

      // Data from login API
      NavigationUtils.toHome();
      hideLoadingDialog();
    } else {
      hideLoadingDialog();
      // Todo: Handle failure
    }
  }
}
