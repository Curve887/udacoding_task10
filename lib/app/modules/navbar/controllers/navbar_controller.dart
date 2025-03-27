import 'package:get/get.dart';

class NavbarController extends GetxController {
  // Index halaman yang aktif
  var selectedIndex = 0.obs;

  // Update index ketika item ditekan
  void changePage(int index) {
    selectedIndex.value = index;
  }
}
