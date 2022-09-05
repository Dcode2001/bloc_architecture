import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'demo_bloc.dart';

class initdemo extends StatelessWidget {
  const initdemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DemoBloc(),
      child: demo(),
    );
  }
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {

  late DemoBloc db; // ? null safety pan add thay sake
  
  @override
  void initState() {
    super.initState();

     db = BlocProvider.of<DemoBloc>(context);
     db.add(InitEvent(10));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLOC"),
      ),
      body: Container(
        color: Colors.purple.shade100,
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              BlocBuilder<DemoBloc, DemoState>(
                builder: (context, state) {
                    if(state is InitialState)
                      {
                          return Text("${state.cnt}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,color: Colors.purple),);
                      }
                    return Text("0");  // else pan mukay
               },
              ),
              SizedBox(height: 15),

              ElevatedButton(onPressed: () {

                db.add(IncrementEvent());

              }, child: Text("Increment",style: TextStyle(fontSize: 20),)),

              SizedBox(height: 15),

              ElevatedButton(onPressed: () {

                db.add(DecrementEvent());

              }, child: Text("Decrement",style: TextStyle(fontSize: 20)))
            ],
          ),
        ),
      ),
    );
  }
}
