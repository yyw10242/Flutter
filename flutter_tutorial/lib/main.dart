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
            Icon(Icons.dangerous)
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
