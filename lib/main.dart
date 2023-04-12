import 'package:flutter/material.dart';
import 'splash.dart';
import 'home.dart';
import 'login.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/login': (context) => const Login(),
    '/': (context) => const Splash(),
    '/home': (context) => const Home()
  },
  theme: ThemeData(fontFamily: "Roboto") ,
));

