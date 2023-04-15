import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_step01/provider/auth_provider.dart';
import 'package:provider_package_step01/provider/count_provider.dart';
import 'package:provider_package_step01/provider/example_one_provider.dart';
import 'package:provider_package_step01/provider/favourit_provider.dart';
import 'package:provider_package_step01/provider/theme_changer_provider.dart';
import 'package:provider_package_step01/screen/dark_theme.dart';
// import 'package:provider_package_step01/screen/count_example.dart';
// import 'package:provider_package_step01/screen/example_one.dart';
import 'package:provider_package_step01/screen/favourite/favourit_screen.dart';
import 'package:provider_package_step01/screen/login.dart';
import 'package:provider_package_step01/screen/value_notify_listner.dart';
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
        ChangeNotifierProvider(create: (_)=>ThemeChangeProvider()),
        ChangeNotifierProvider(create: (_)=>AuthProvider()),




      ],
      child: Builder(
        builder: (context) {
          final themeChanger = Provider.of<ThemeChangeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
            brightness : Brightness.light,
              primarySwatch: Colors.blue,
            ),
          darkTheme:ThemeData(
            brightness: Brightness.dark
          ),
            home:  LoginScreen(),
          );

        },)


    );
  }
}

