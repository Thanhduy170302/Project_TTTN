import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdshop/routes/routes.dart';
import 'package:tdshop/view/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TD Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.welcome,
      getPages: AppRoutes.routes,
    );
  }
}
