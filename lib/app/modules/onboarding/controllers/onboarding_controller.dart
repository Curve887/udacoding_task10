import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  var pageController = PageController();

  void nextPage() {
    currentPage.value++;
    pageController.animateToPage(
      currentPage.value,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  void previousPage() {
    currentPage.value--;
    pageController.animateToPage(
      currentPage.value,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  void onInit() {
    super.onInit();
    autoSlide();
  }

  void autoSlide() {
    Future.delayed(Duration(seconds: 5), () {
      nextPage();
      autoSlide();
    });
  }

  void goToLogin() {
    Get.offNamed('/login');
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
