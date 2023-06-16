import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/string_res.dart';
import 'login_controller.dart';

Widget textField() {
  return GetBuilder<LoginController>(
    builder: (controller) => Column(
      children: [
        TextField(
          controller: controller.emailController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: StringRes.hintemail,
            labelText: StringRes.labelemail,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: controller.passwordController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: StringRes.hintpassword,
            labelText: StringRes.labelpassword,
          ),
        ),
      ],
    ),
  );
}

Widget loginbutton() {
  return GetBuilder<LoginController>(
    builder: (controller) {
      return ElevatedButton(
        onPressed: () => controller.logintoHome(),
        child: const Text(StringRes.login),
      );
    },
  );
}

Widget signUpbutton() {
  return GetBuilder<LoginController>(
    builder: (controller) => ElevatedButton(
      onPressed: () => controller.loginToSign(),
      child: const Text(StringRes.singUp),
    ),
  );
}
