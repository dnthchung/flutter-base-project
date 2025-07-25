import 'package:base_project_flutter/app/core/base/base_get_view.dart';
import 'package:base_project_flutter/app/core/constants/app_constants.dart';
import 'package:base_project_flutter/app/presentation/widgets/common_button.dart';
import 'package:base_project_flutter/gen/l10n/generated/l10n.dart';

import '../controllers/login_controller.dart';

class LoginView extends BaseGetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget myBuild(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.login),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.s20),
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailController,
              decoration: InputDecoration(
                labelText: S.of(context).email,
              ),
            ),
            const SizedBox(height: AppConstants.s20),
            TextFormField(
              controller: controller.passwordController,
              decoration: InputDecoration(
                labelText: S.of(context).password,
              ),
            ),
            const SizedBox(height: AppConstants.s40),
            CommonButton(
              onPressed: controller.login,
              title: S.current.login,
            ),
            Obx(() {
              return Text(
                controller.loginResult?.email ?? '',
                style: const TextStyle(
                  fontSize: AppConstants.s16,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
