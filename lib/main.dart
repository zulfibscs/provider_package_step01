import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_step01/provider/count_provider.dart';
import 'package:provider_package_step01/provider/example_one_provider.dart';
import 'package:provider_package_step01/provider/favourit_provider.dart';
import 'package:provider_package_step01/screen/count_example.dart';
import 'package:provider_package_step01/screen/example_one.dart';
import 'package:provider_package_step01/screen/favourite/favourit_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>CounterProvider(),),
        ChangeNotifierProvider(create: (_)=>ExampleOneProvider()),
        ChangeNotifierProvider(create: (_)=>FavouriteItemProvider()),


      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FavouritScreen(),
    ),
    );
  }
}

