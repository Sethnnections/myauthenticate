import 'package:get/get.dart';
import 'package:myauthenticate/api/auth_api.dart';

class AuthController extends GetxController {
  final AuthAPI _authAPI = AuthAPI();
  final email = ''.obs;
  final password = ''.obs;
  final isLoading = false.obs;
  late RxBool isLoggedIn;

  @override
  void onInit() {
    super.onInit();
    isLoggedIn = false.obs;
  }

  void login() async {
    isLoading.value = true;
    print('Email: ${email.value}');
    print('Password: ${password.value}');

    final user = await _authAPI.login(email.value, password.value);

    isLoading.value = false;

    if (user != null) {
      isLoggedIn.value = true;
      print('isLoggedIn: ${isLoggedIn.value}');
      Get.offNamed('/home');
    } else {
      Get.snackbar('Error', 'Invalid email or password');
    }
  }

  void logout() {
    isLoggedIn.value = false;
    print("The value is ${isLoggedIn.value}");
    Get.offAllNamed('/login');
  }
}
