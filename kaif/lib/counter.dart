import 'package:flutter/material.dart';
class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
 int count=0;
 void increment(){
   setState(() {
     count++;
   });
 }
 void Reset(){
   setState(() {
     count=0;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Press to Inrease",style: TextStyle(fontSize: 30),),
            Text(count.toString(),style: TextStyle(fontSize: 50),),
  ElevatedButton(onPressed: increment, child: Text("Increment"),),
            ElevatedButton(onPressed: Reset, child: Text("Reset")),

          ],

        ),
      ),
    );
  }
}
