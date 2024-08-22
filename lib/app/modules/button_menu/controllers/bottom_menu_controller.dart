import 'package:get/get.dart';

class BottomMenuController extends GetxController {
  //TODO: Implement ButtonMenuController

  var selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
