import 'package:flutter/material.dart';
import 'package:usprint/auth.dart';
import 'package:usprint/home.dart';
import 'package:usprint/login.dart';

import 'package:usprint/splash.dart';
import 'dart:async';
import 'package:animations/animations.dart';

void main() {
  runApp(const Usprint());
}

class Usprint extends StatefulWidget {
  const Usprint({super.key});

  @override
  State<Usprint> createState() => _UsprintState();
}

class _UsprintState extends State<Usprint> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: splashscreen()),
      initialRoute: '/',
      routes: {
        // '': (context) => splashscreen(),
        '/auth': (context) => auth(),
        '/login': (context) => login(),
        '/home': (context) => Home(),

      },
    );
  }
}
