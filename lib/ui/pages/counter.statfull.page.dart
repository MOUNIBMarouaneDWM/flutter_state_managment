import 'package:flutter/material.dart';
import 'package:state_management/ui/widget/drawer.widget.dart';

import '../../main.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:MyDrawer() ,
        appBar: AppBar(title: Text('Counter'),),
        body:Center(
          child: Text('Value : $counter',
            style:TextStyle(
                color: Colors.purple,
                fontSize: 30),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: (){
                setState(() {
                  --counter;
                });

              },
            ),
            SizedBox(width: 10,),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                setState(() {
                  ++counter;
                });
              },
            ),
          ],
        )
    );
  }
}