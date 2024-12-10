import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
  final String HintTT;
  final bool hide;
  final TextEditingController controll;
  const MyTextField({super.key,required this.HintTT,required this.hide, required this.controll});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller:controll ,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color:Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade500),
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: HintTT,

      ),
obscureText: hide,
      ),
    );
  }
}
