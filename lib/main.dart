import 'package:eco/Screens/home.dart';
import 'package:flutter/material.dart';

import 'Screens/forgot_Pass.dart';
import 'Screens/login.dart';
import 'Screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
