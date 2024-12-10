import 'package:calculator/Drawer_page.dart';
import 'package:calculator/button_page.dart';
import 'package:flutter/material.dart';
class home_page extends StatelessWidget {
  final String na="0";
   home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        backgroundColor:Colors.orange ,
        centerTitle: true,
        title: Text("Calculator",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold
        ),),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),

      ),
drawer: Drawer_page(),
      body: Padding(
        padding:  EdgeInsets.all(8),
        child: Column(

          children: [
            Row(
              children: [

                Container(
                  color: Colors.transparent,
                  height: 200,
                  width: 370,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.centerRight,
                  child: Text(na,style: TextStyle(
                    fontSize: 100,color: Colors.white
                  ),),
                ),

              ],
            ),
Row(

  children: [
// Padding(
// padding: EdgeInsets.symmetric(horizontal: 8),
//
//   child: button_page(name: "6",c: Colors.yellow,),
// ),
//     button_page(name: "6",c: Colors.yellow,),
    button_page(name: "C",c: Colors.grey,),
    button_page(name: "+/-",c: Colors.grey,),
    button_page(name: "%",c: Colors.grey),
    button_page(name: "/",c: Colors.orange,),
  ]

),
Row(
    children: [
      button_page(name: "7",c: Colors.grey,),
      button_page(name: "8",c: Colors.grey),
      button_page(name: "9",c: Colors.grey),
      button_page(name: "x",c: Colors.orange,),
    ]
)
,Row(
                children: [
                  button_page(name: "4",c: Colors.grey,),
                  button_page(name: "5",c: Colors.grey),
                  button_page(name: "6",c: Colors.grey),
                  button_page(name: "-",c: Colors.orange,),
                ]
            )
,
            Row(
                children: [
                  button_page(name: "1",c: Colors.grey,),
                  button_page(name: "2",c: Colors.grey),
                  button_page(name: "3",c: Colors.grey),
                  button_page(name: "+",c: Colors.orange,),
                ]
            ),

Row(

  children: [

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child:
        Text("0"
          ,style: TextStyle(
            color: Colors.black,fontSize: 50
          ),
        ),
        width: 170,
        height: 75,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(35)
        ),
      ),
    ),

    Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 75,

        width: 75,
      alignment: Alignment.center,
      child:   Text("."
          ,style: TextStyle(
              color: Colors.black,fontSize: 50
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(35)
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 75,

        width: 75,
        alignment: Alignment.center,
        child:   Text("="
          ,style: TextStyle(
              color: Colors.black,fontSize: 50
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(35)
        ),
      ),
    )
  ],
),

          ],
        ),
      ),
    );

  }
}
