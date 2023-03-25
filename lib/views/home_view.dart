import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myauthenticate/controllers/userController.dart';
import 'package:myauthenticate/views/check_view.dart';

// class HomeView extends GetView<AuthController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Welcome'),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: controller.logout,
//               child: Text('Logout'),
//             ),
//             ElevatedButton(
//               onPressed: () => Get.toNamed('/check'),
//               child: Text('Check'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeView extends StatelessWidget {
  late final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    print('isLoggedIn: ${_authController.isLoggedIn.value}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Obx(
          () => _authController.isLoggedIn.value
              ? ElevatedButton(
                  onPressed: () {
                    Get.to(const CheckView());
                    // Do something
                  },
                  child: const Text(
                      'You Are Authenticated.... go to check button'),
                )
              : const ElevatedButton(
                  onPressed: null,
                  child:
                      Text('not Authenticated press the below button to login'),
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _authController.logout(),
        child: const Icon(Icons.logout),
      ),
    );
  }
}
