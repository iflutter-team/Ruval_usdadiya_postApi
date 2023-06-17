import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_api_calling_second_time/screen/signup_screen/signup_controller.dart';

import '../../utils/string_res.dart';

Widget textField() {
  return GetBuilder<SignUpController>(
    builder: (singnUpController) => Column(
      children: [
        TextField(
          controller: singnUpController.nameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: StringRes.hintname,
            labelText: StringRes.labelname,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: singnUpController.emailController,
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
          controller: singnUpController.numberController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: StringRes.hintnumber,
            labelText: StringRes.labelnumber,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: singnUpController.passwordController,
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

Widget singUpButton() {
  return GetBuilder<SignUpController>(
    builder: (controller) => ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
      onPressed: () => controller.navigateToBackScreen(),
      child: const Text(StringRes.singUp),
    ),
  );
}
