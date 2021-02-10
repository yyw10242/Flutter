import 'package:flutter/material.dart';
import 'src/pages/CountPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Counter Bloc Example'),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CountPage();
                    },
                  ),
                );
              },
              child: Text('Let\'s Count'),
            ),
          ),
        ),
      ),
    );
  }
}
