import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

  bool get isFormValid => email.isNotEmpty && password.isNotEmpty;
}
