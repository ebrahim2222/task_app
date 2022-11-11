import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_app/UI/screens/splash.dart';
import 'package:test_app/core/values/color_manager.dart';
import 'package:test_app/core/values/font_size_manager.dart';
import 'package:test_app/core/values/pages_manager.dart';
import 'package:test_app/services/dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => DioService().init());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test app',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: HexColor(ColorManager.backgroundColor),
            elevation: 0.0,
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: HexColor(ColorManager.whiteColor),
                statusBarBrightness: Brightness.dark),
            titleTextStyle: TextStyle(
                color: HexColor(ColorManager.secondColor),
                fontSize: FontSizeManager.s24)),
        primarySwatch: Colors.blue,
      ),
      getPages: PagesManager.getPages,
      home: const SplashScreen(),
    );
  }
}
