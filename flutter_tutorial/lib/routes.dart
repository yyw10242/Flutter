import 'package:flutter/widgets.dart';
import 'package:flutter_tutorial/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_tutorial/screens/splash/splash_screen.dart';

// All route will be here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
