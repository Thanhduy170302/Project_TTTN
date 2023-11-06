import 'package:get/get.dart';
import 'package:tdshop/view/screens/auth/login_screen.dart';
import 'package:tdshop/view/screens/auth/signup_screen.dart';
import 'package:tdshop/view/screens/welcome_screen.dart';

class AppRoutes {
  //initialRoute
  static const welcome = Routes.WelcomeScreen;

  //getPages

  static final routes = [
    GetPage(
      name: Routes.WelcomeScreen,
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: Routes.LoginScreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.SignUpScreen,
      page: () => SignUpScreen(),
    ),
  ];
}

class Routes {
  // ignore: constant_identifier_names
  static const WelcomeScreen = '/welcomeScreen';
  // ignore: constant_identifier_names
  static const LoginScreen = '/loginScreen';
  // ignore: constant_identifier_names
  static const SignUpScreen = '/signUpScreen';
}
