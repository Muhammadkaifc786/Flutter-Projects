import 'package:flutter/material.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SafeArea(child: Column(
      children: [
        Center(child: Text("Third Page")),
      ],
     )),
    );
  }
}