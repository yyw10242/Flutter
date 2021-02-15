import 'package:flutter/material.dart';
import 'package:flutter_tutorial/size_config.dart';
import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // I have to call it on my starting screen.
    //   Which looks like Builds context of Sizing.
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
