import 'package:flutter/material.dart';
import 'package:mersel/screens/home.dart';
import 'package:mersel/screens/login.dart';
import 'package:mersel/screens/map.dart';
import 'package:mersel/screens/signup.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        // "/": (context) => Loading(), splash
        "/home": (context) => const Home(),
        "/login": (context) => const Login(),
        '/signup': (context) => const SignUp(),
        '/map': (context) => DemoMapPage(),
      }));
}
