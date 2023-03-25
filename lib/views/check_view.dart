import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myauthenticate/controllers/userController.dart';

class CheckView extends GetView<AuthController> {
  const CheckView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: controller.isLoggedIn.value
              ? () => print('Button pressed!')
              : null,
          child: const Text('Button'),
        ),
      ),
    );
  }
}
