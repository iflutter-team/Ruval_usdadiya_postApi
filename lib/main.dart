import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_api_calling_second_time/screen/login_screen/login_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: LoginScreen(),
    );
  }
}
