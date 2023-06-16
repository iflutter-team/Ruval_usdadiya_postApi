import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_api_calling_second_time/screen/login_screen/login_widget.dart';

import 'login_controller.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textField(),
            const SizedBox(
              height: 20,
            ),
            loginbutton(),
            signUpbutton(),
          ],
        ),
      ),
    );
  }
}
