import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Tutorial',
      home: Counter(),
    ),
  );
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Increment'),
    );
  }
}

//Changing widgets in response to input
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      //setState let flutter know somthing changed.
      // so let flutter to update display values.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CounterIncrementor(onPressed: _increment),
        CounterDisplay(
          count: _counter,
        ),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('myButton was tapped!');
      },
      child: Container(
        alignment: Alignment.centerLeft,
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.green[200]),
        child: Text('MyButtonBox'),
      ),
    );
  }
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          title: Text('Example title'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.add_call),
              tooltip: 'Call',
              onPressed: null,
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.baby_changing_station),
              ),
              Tab(
                icon: Icon(Icons.cached),
              ),
              Tab(
                icon: Icon(Icons.dangerous),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.baby_changing_station),
            Icon(Icons.cached),
            Wrap(
              children: [Icon(Icons.dangerous), MyButton()],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Add',
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ),
    );
  }
}
