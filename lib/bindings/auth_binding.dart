import 'package:get/get.dart';
import 'package:myauthenticate/controllers/userController.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
