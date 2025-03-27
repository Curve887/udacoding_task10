import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashscreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToOnboarding();
  }

  void _navigateToOnboarding() async {
    await Future.delayed(Duration(seconds: 3)); // Durasi splash screen
    Get.offAllNamed(Routes.ONBOARDING); // Arahkan ke halaman Onboarding
  }
}
