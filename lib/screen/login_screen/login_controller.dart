import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:post_api_calling_second_time/screen/home_screen/home_screen.dart';
import 'package:post_api_calling_second_time/screen/login_screen/login_api.dart';
import 'package:post_api_calling_second_time/screen/signup_screen/signup_screen.dart';

import '../../model/login_model.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginModel? loginModel;
  void loginToSign() {
    Get.to(() => SignUpScreen());
  }

  void logintoHome() {
    // Get.to(() => HomeScreen());
    userlogin();
  }

  Future userlogin() async {
    Map<String, dynamic> body = {
      "email": emailController.text.trim(),
      "Password": passwordController.text.trim(),
    };

    loginModel = await LoginApi.loginUser(body);
    if (loginModel != null && loginModel!.status == 1) {
      Get.to(() => const HomeScreen());
    }
  }
}
