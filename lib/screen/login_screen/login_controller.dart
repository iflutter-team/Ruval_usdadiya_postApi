import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:post_api_calling_second_time/screen/home_screen/home_screen.dart';
import 'package:post_api_calling_second_time/screen/signup_screen/signup_screen.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginToSign() {
    Get.to(() => SignUpScreen());
  }

  void logintoHome() {
    Get.to(() => HomeScreen());
  }
}
