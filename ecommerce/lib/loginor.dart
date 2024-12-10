import 'package:ecommerce/Register_page.dart';
import 'package:ecommerce/home_page.dart';
import 'package:flutter/material.dart';
class LoginorRegister extends StatefulWidget {
  const LoginorRegister({super.key});

  @override
  State<LoginorRegister> createState() => _LoginorRegisterState();
}

class _LoginorRegisterState extends State<LoginorRegister> {
  bool ShowLogin=true;
  void TogglePages(){
    setState(() {
      ShowLogin=!ShowLogin;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(ShowLogin){
      return homePage(
        onTap: TogglePages,
      );

    }
    else return RegisterPage(onTap: TogglePages);
  }
}
