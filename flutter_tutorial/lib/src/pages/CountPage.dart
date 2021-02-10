import 'package:flutter/material.dart';
import 'package:flutter_tutorial/src/bloc/CountBloc.dart';

class CountPage extends StatefulWidget {
  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  CountBloc countBloc = CountBloc();

  @override
  void dispose() {
    super.dispose();
    countBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.model_training_sharp),
        title: Text('CountPage'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.backspace),
          )
        ],
      ),
      body: Center(
        child: StreamBuilder(
          stream: countBloc.count,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.toString());
            }
            return CircularProgressIndicator();
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                countBloc.change(1);
              },
              child: Icon(Icons.plus_one),
            ),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              countBloc.change(-1);
            },
            child: Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}
