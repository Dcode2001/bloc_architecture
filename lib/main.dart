import 'package:bloc_architecture/Demo/demo.dart';
import 'package:bloc_architecture/Demo/demo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    BlocProvider(
      create: (context) => DemoBloc(),
    )
  ],
  child: MaterialApp(home: demo(),),
  ));

  /*runApp(MultiProvider(
    providers: [
      BlocProvider(
        create: (context) => DemoBloc(),
      ),
    ],
    child: MaterialApp(home: demo(),),
  ));*/
}
