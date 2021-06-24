import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/ui/blocs/counter.bloc.dart';
import 'package:state_management/ui/blocs/counter.cubit.dart';
import 'package:state_management/ui/widget/drawer.widget.dart';


class CouenterBLoCBloc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:MyDrawer() ,
        appBar: AppBar(title: Text('Counter'),),
        body:Center(
            child: BlocBuilder<CounterBloc,int> (
              builder: (context,state)=>(
                  Text('Value :$state ',
                    style:TextStyle(
                        color: Colors.purple,
                        fontSize: 30),
                  )
              ),
            )
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: (){
                context.read<CounterBloc>().add(CounterEvent.DECRUMENT);
              },
            ),
            SizedBox(width: 10,),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                context.read<CounterBloc>().add(CounterEvent.INCREMENT);
              },
            ),
          ],
        )
    );

  }
}
