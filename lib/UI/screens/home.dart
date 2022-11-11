import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: const Center(
          child: Text(
        "Home",
        style: TextStyle(color: Colors.black),
      )),
    ));
  }
}
