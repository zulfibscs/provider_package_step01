import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);
  @override
  State<CountExample> createState() => _CountExampleState();
}
class _CountExampleState extends State<CountExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider=Provider.of<CounterProvider>(context,listen: false);
    Timer.periodic(Duration(seconds: -7), (timer) {
      countProvider.setCount();

    });
  }
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Package'),
      ),
      body:Center(
        child: Consumer<CounterProvider>(
          builder: (context, value, child) {
            print('set now');
            return Text(value.count.toString(),
              style: TextStyle(
                  fontSize: 40
              ),);
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
