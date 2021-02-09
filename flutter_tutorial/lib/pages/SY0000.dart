// provide splash screen and Login Screen
import 'dart:developer';

import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  bool isSplashed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text('Title'),
            ),
          ),
          null,
        ],
      ),
    );
  }
}

class StartSplash extends StatefulWidget {
  @override
  _StartSplashState createState() => _StartSplashState();
}

class _StartSplashState extends State<StartSplash> {
  double _opacity = 1.0;
  void _onTap() {
    setState(() {
      _opacity = 0;
      log('tapped');
    });
  }

  void _onEnd() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: Duration(seconds: 2),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
