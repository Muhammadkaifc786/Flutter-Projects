import 'package:flutter/material.dart';
import 'package:kaif/counter.dart';
import 'package:kaif/page1.dart';

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

      home: counter(),
      // home: firstpage(),
      //   body: Center(
      //     child: GestureDetector(
      //       onTap: (){
      //         print("User Tap");
      //       },
      //     child: Container(
      //       width: 300,
      //       height: 300,
      //       color: Colors.purple,
      //
      //       child: Text("Tap Me",
      //       textAlign: TextAlign.center,
      //
      //         style: TextStyle(
      //
      //           color: Colors.white,
      //           fontSize: 30,
      //         ),
      //       ),
      //     ),
      // ),
      //   ),
         // body: Stack(
         //   alignment: Alignment.center,
         //   children: [
         //     Container(
         //       width: 200,
         //       height: 200,
         //       color: Colors.purple,
         //     ),
         //     Container(
         //       width: 150,
         //       height: 150,
         //       color: Colors.purple[200],
         //     )
         //   ],
         // ),
        // body: GridView.builder(
        //   itemCount: 64,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4)
        //     , itemBuilder:(context,index)=>Container(color: Colors.purple,margin: EdgeInsets.all(2),),
        //
        // ),
        // body: ListView.builder(
        //   itemCount: 10,
        //     itemBuilder: (context,index)=>ListTile(
        //       title: Text(index.toString()),
        //     )
        // ),
       // backgroundColor: Colors.deepPurple[200],

        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text("Kaif"),
        //   backgroundColor: Colors.purpleAccent,
        //   elevation: 8,
        //   leading: Icon(Icons.menu,color: Colors.white,),
        //               actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout),),],
        // ),
      // body: Column(
      //   //mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment:CrossAxisAlignment.center ,
      //   children: [
      //     Container(
      //       height: 200,
      //       width: 200,
      //       color:Colors.deepPurple ,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 200,
      //       color:Colors.deepPurple[400] ,
      //     ),
      //     Expanded(
      //     child:Container(
      //       height: 200,
      //       width: 200,
      //       color:Colors.deepPurple[300] ,
      //     )
      //     ),
      //   ],
      // ),
      //   body: ListView(
      //  scrollDirection:Axis.vertical,
      //     children: [
      //       Container(
      //         height: 200,
      //
      //         color:Colors.deepPurple ,
      //       ),
      //       Container(
      //         height: 200,
      //
      //         color:Colors.deepPurple[400] ,
      //       ),
      //
      //       Container(
      //         height: 200,
      //
      //         color:Colors.deepPurple[300] ,
      //       )
      //     ],
      //   ),
      //   body: Center(
      //     child: Container(
      //     height: 300,
      //     width: 200,
      //     decoration: BoxDecoration(
      //       color: Colors.green,
      //       borderRadius: BorderRadius.circular(20),
      //     ),
      //
      //     padding: EdgeInsets.all(25),
      //
      //     // child: Text("Hellon Kaif"
      //     // ,style: TextStyle(
      //     //     color: Colors.white,
      //     //     fontSize: 30,
      //     //   ),
      //     // ),
      //     //   child: Icon(
      //     //     Icons.favorite,
      //     //     color: Colors.white,
      //     //     size: 89,
      //     //   ),
      //   ),
      // ),
      );
  }
  }