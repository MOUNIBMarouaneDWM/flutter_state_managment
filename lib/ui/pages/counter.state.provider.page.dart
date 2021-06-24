import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/ui/provider/counter.state.dart';
import 'package:state_management/ui/widget/drawer.widget.dart';


// ignore: must_be_immutable
class CounterStateProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("app build .......");
    return Scaffold(
        drawer:MyDrawer() ,
        appBar: AppBar(title: Text('Counter'),),
        body:Center(
          child: Consumer<CounterState>(
            builder: (context,CounterState counterState,child){
              return
                Text('Value : ${counterState.counterd}',
                  style:TextStyle(color: Colors.purple, fontSize: 30),
              );
            },
          )
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: Icon(Icons.remove),
                onPressed:(){
                  Provider.of<CounterState>(context,listen: false).decrementer();
                }
            ),
            SizedBox(width: 10,),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed:(){
                Provider.of<CounterState>(context,listen: false).incrementer();
              }
            ),
          ],
        )
    );
  }
}
