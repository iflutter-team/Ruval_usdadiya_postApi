import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_api_calling_second_time/screen/signup_screen/signup_controller.dart';
import 'package:post_api_calling_second_time/screen/signup_screen/signup_widget.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  SignUpController singUpController = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textField(),
              const SizedBox(
                height: 20,
              ),
              singUpButton()
            ],
          ),
        ),
      ),
    );
    ;
  }
}
