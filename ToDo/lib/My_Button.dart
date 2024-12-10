import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String Name;
  VoidCallback onPressed;
 MyButton({super.key,required this.Name,
  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(onPressed: onPressed,
      color: Colors.white,

      elevation: 2,
      child: Text(Name),
    );
  }
}
