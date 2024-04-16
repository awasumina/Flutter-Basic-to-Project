import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/counter_view_model.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterViewModel>(create: (_)=> CounterViewModel(),
    child: Consumer<CounterViewModel>(
      builder: (context, model, child)=>
          SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text("State management"),
              ),
              body: Center(
                child: Text(
                  model.count.toString(),
                  style: TextStyle(fontSize: 50.0),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  model.increment();
                },
              ),
            ),
          ),
    ),
    );



  }
}
