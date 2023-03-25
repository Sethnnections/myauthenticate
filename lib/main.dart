import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myauthenticate/bindings/auth_binding.dart';
import 'package:myauthenticate/controllers/userController.dart';

import 'package:myauthenticate/views/check_view.dart';
import 'package:myauthenticate/views/home_view.dart';
import 'package:myauthenticate/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login',
          page: () => LoginView(),
          binding: AuthBinding(),
        ),
        GetPage(
          name: '/home',
          page: () => HomeView(),
          binding: AuthBinding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/check',
          page: () => CheckView(),
          binding: AuthBinding(),
        ),
      ],
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        // Get.put(UserController());
      }),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:myauthenticate/controllers/userController.dart';
// import 'package:myauthenticate/views/check_view.dart';
// import 'package:myauthenticate/views/home_view.dart';
// import 'package:myauthenticate/views/login_view.dart';
// import 'package:myauthenticate/bindings/auth_binding.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'My App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       initialRoute: '/login',
//       getPages: [
//         GetPage(
//           name: '/login',
//           page: () => LoginView(),
//           binding: AuthBinding(),
//         ),
//         GetPage(
//           name: '/home',
//           page: () => HomeView(),
//           binding: AuthBinding(),
//         ),
//         GetPage(
//           name: '/check',
//           page: () => CheckView(),
//           binding: AuthBinding(),
//         ),
//       ],
//     );
//   }
// }


