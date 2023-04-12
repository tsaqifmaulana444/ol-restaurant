import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: 175,
          height: 175,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/logo.png"),
          )
        ),
      ),
    )
    );
  }
}
