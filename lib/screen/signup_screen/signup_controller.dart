import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:post_api_calling_second_time/screen/login_screen/login_screen.dart';
import 'package:post_api_calling_second_time/screen/signup_screen/signup_api.dart';

import '../../model/signup_model.dart';

class SignUpController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SignUpModel? signUpModel;

  navigateToBackScreen() {
    userSignUp();
  }

  Future userSignUp() async {
    Map<String, dynamic> body = {
      "FirstName": nameController.text.trim(),
      "LastName": numberController.text.trim(),
      "EmailId": emailController.text.trim(),
      "Password": passwordController.text.trim(),
    };
    signUpModel = await SignUpApi.registerUser(body);
    if (signUpModel != null && signUpModel!.status == 1) {
      Get.to(LoginScreen());
    }
  }
}
