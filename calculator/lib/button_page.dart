import 'package:flutter/material.dart';
class button_page extends StatelessWidget {
  final String name;
  final Color c;
  
  const button_page({super.key,
  required this.name,required this.c});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
      alignment: Alignment.center,
        child: Text(

          name,style: TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
        ),
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: c,
        ),
      ),
    );
  }
}
