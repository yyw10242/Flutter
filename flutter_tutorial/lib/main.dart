import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Tutorial',
      home: TutorialHome(),
    ),
  );
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(Scaffold(
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
          key: Key('tabBar'),
          tabs: <Widget>[
            Tab(text: 'a'),
            Tab(text: 'b'),
            Tab(text: 'c'),
          ],
        ),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    ));
  }
}
