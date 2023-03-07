import 'package:get/get_navigation/get_navigation.dart';
import 'package:justiserve/route/route.name.dart';
import 'package:justiserve/views/signup.dart';
import 'package:justiserve/views/splash.dart';

class AppScreen {
  static final screens = [
    GetPage(name: RouteName.splash, page: () => Splash()),
    GetPage(name: RouteName.signup, page: () => const SignUp()),
  ];
}
