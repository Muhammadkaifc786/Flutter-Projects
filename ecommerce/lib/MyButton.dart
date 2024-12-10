import 'package:flutter/material.dart';
class Mybutton extends StatelessWidget {
  final String TexT;
  final void Function()? onTap;
  const Mybutton({super.key,required this.TexT,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      
      height: 75,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
      
        ),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Text(
            TexT,style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
