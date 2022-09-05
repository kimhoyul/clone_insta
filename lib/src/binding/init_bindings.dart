import 'package:clone_instagram/src/controller/auth_controller.dart';
import 'package:clone_instagram/src/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
    Get.put(AuthController(), permanent: true);
  }
}
