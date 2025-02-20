import 'package:chatapp/Chat.dart';
import 'package:chatapp/HomePage.dart';
import 'package:chatapp/Pic.dart';
import 'package:chatapp/RegisterPage.dart';
import 'package:chatapp/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
