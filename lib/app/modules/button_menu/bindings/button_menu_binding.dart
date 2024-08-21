import 'package:get/get.dart';

import '../controllers/button_menu_controller.dart';

class ButtonMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtonMenuController>(
      () => ButtonMenuController(),
    );
  }
}
