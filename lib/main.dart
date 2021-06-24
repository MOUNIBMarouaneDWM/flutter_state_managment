
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/ui/blocs/counter.bloc.dart';
import 'package:state_management/ui/blocs/counter.cubit.dart';
import 'package:state_management/ui/pages/counter.state.BlocBloc.page.dart';
import 'package:state_management/ui/pages/counter.state.BlocCubit.page.dart';
import 'package:state_management/ui/pages/counter.state.provider.page.dart';
import 'package:state_management/ui/pages/counter.statfull.page.dart';


void main()=>runApp( MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (context)=>CounterState())
    //   ],
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterCubit(),),
        BlocProvider(create: (context)=>CounterBloc(),)
      ],
      child: MaterialApp(
        routes: {
          '/counter1':(context)=>CounterPage(),
          '/counter2':(context)=>CounterStateProviderPage(),
          '/counter3':(context)=>CouenterBLoCCubit(),
          '/counter4':(context)=>CouenterBLoCBloc(),
        },
        theme: ThemeData(primarySwatch: Colors.purple),
        home: CounterPage(),
        initialRoute: '/counter1',
      ),
    );
  }
}








