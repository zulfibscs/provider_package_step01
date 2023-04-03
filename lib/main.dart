import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_step01/provider/count_provider.dart';
import 'package:provider_package_step01/screen/count_example.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>CounterProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CountExample(),
      ),
    );

  }
}

