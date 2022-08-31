import 'package:flutter/material.dart';
import 'package:oder_list/routes/routes.dart';
import 'package:oder_list/screens/screen_cart/screen_cart.dart';
import 'package:oder_list/screens/screen_home/screen_home.dart';
import 'package:oder_list/screens/screen_login/screen_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: route,
      routes: {
        route: (context) => const ScreenLogin(),
        routeHome: (context) => const ScreenHome(),
        routeCart: (context) => ScreenCart(),
      },
    );
  }
}
