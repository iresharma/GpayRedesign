import 'package:flutter/material.dart';
import 'package:google_pay_redesign/Views/SplashScreen.dart';

import 'Services/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light
      ),
      initialRoute: '/',
      routes: Router(),
    );
  }
}

