import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Tutorial',
      home: TutorialHome(), //Well.. here also changed
    ),
  );
}

/* **********  ONLY HERE IS CHANGED IN THIS COMMIT  ********** */
// WHICH HAVE HOW TO MAKE BUTTON
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

/************************************************************* */
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
