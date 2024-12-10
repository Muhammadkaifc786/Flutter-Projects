import 'package:flutter/material.dart';
import 'package:todo/My_Button.dart';
class Dialog_Box extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onClose;
  Dialog_Box({super.key,required this.controller,
  required this.onClose,
  required this.onSave});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.yellow,

      content: Container(

       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           TextField(
             controller: controller,
             decoration:InputDecoration(
               border: OutlineInputBorder(),
               hintText: "Add a New Task",
             ) ,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               MyButton(Name:"Cancel", onPressed: onClose),
               const SizedBox(width: 8,),
               MyButton(Name:"Save", onPressed: onSave)

             ],
           )
         ],
       ),
        height: 120,

      ),
    );
  }
}
