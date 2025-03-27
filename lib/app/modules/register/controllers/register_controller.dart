import 'package:get/get.dart';

class RegisterController extends GetxController {
  var name = ''.obs;
  var email = ''.obs;
  var password = ''.obs;

  bool get isFormValid =>
      name.isNotEmpty && email.isNotEmpty && password.isNotEmpty;
}
