import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;
  _startDelay() {
    timer = Timer(const Duration(seconds: 2), () {
      Get.offNamed("/bottomNav");
    });
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
        "Splash",
        style: TextStyle(color: Colors.black),
      )),
    );
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }
}
