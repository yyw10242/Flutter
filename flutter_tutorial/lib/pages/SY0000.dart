// provide splash screen and Login Screen
import 'dart:developer';

import 'package:flutter/material.dart';
import 'SY0001[Login].dart';

// class Main extends StatelessWidget {
//   bool isSplashed = false;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Stack(
//         children: [
//           Scaffold(
//             appBar: AppBar(
//               title: Text('Title'),
//             ),
//             body: LoginScreen(),
//           ),
//           StartSplash(),
//         ],
//       ),
//     );
//   }
// }

// class StartSplash extends StatefulWidget {
//   @override
//   _StartSplashState createState() => _StartSplashState();
// }

// class _StartSplashState extends State<StartSplash> {
//   double _opacity = 1.0;
//   double _size = double.infinity;

//   void _onTap() {
//     setState(() {
//       _opacity = 0;
//     });
//   }

//   void _onEnd() {
//     setState(() {
//       _size = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _onTap,
//       child: AnimatedOpacity(
//         opacity: _opacity,
//         duration: Duration(seconds: 2),
//         onEnd: _onEnd,
//         child: Container(
//           width: _size,
//           height: _size,
//           color: Theme.of(context).primaryColor,
//         ),
//       ),
//     );
//   }
// }
