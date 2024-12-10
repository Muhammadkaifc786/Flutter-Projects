import 'package:ecommerce/Register_page.dart';
import 'package:ecommerce/home_page.dart';
import 'package:ecommerce/loginor.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/theme/light_mode.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

  home: LoginorRegister(),
      debugShowCheckedModeBanner: false,
    );
  }
}
