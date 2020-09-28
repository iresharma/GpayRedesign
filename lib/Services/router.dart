import 'package:flutter/material.dart';
import 'package:google_pay_redesign/Views/SplashScreen.dart';
import 'package:google_pay_redesign/Views/homeScreen.dart';
import 'package:google_pay_redesign/Views/chatWindow.dart';

Map<String, Widget Function(BuildContext)> Router() {
  var router = {
    '/': (_) => SplashScreen(),
    '/home': (_) => HomeScreen(),
    '/chat': (_) => ChatWindow()
  };

  return router;
}