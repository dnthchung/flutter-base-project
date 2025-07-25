import 'package:base_project_flutter/app/routes/app_pages.dart';
import 'package:get/get.dart';

class NavigationUtils {
  static void popUntilRoot() {
    Get.until((route) => route.isFirst);
  }

  static void closeAllDialog() {
    Get.until((route) => Get.isDialogOpen == false);
  }

  static void toHome() {
    Get.offAllNamed(Routes.HOME);
  }
}
