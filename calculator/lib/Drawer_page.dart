import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Drawer_page extends StatelessWidget {
  const Drawer_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(

      backgroundColor: Colors.black,
  child: ListView(

    padding: EdgeInsets.zero,
    children: [

      DrawerHeader(

        padding: EdgeInsets.symmetric(vertical: 27,horizontal: 12),
        child: Text("Calculator",style: TextStyle(
          fontSize: 40,color:Colors.grey
        ),
        ),

      ),

      Padding(
        padding: EdgeInsets.symmetric(horizontal: 0,vertical: 8),
        child: ListTile(
          leading: Icon(Icons.settings,color: Colors.grey,size: 30,),
          title: Text('Setting',style: TextStyle(
            color: Colors.grey,fontSize: 30
          ),),
          onTap: (){

          },
        ),
      ),
      ListTile(
        leading: Icon(Icons.workspace_premium,color: Colors.grey,size: 30,),
        title: Text('Premium',style: TextStyle(
            color: Colors.grey,fontSize: 30
        ),),
        onTap: (){

        },
      ),
      ListTile(
        leading: Icon(Icons.calculate,color: Colors.grey,size: 30,),
        title: Text('Scientific',style: TextStyle(
            color: Colors.grey,fontSize: 30
        ),),
        onTap: (){

        },
      ),
      ListTile(
        leading: Icon(Icons.star_rate,color: Colors.grey,size: 30,),
        title: Text('Rate Us',style: TextStyle(
            color: Colors.grey,fontSize: 30
        ),),
        onTap: (){

        },
      ),
      ListTile(
        leading: Icon(Icons.info,color: Colors.grey,size: 30,),
        title: Text('About',style: TextStyle(
            color: Colors.grey,fontSize: 30
        ),),
        onTap: (){

        },
      ),

    ],
  )
    );
  }
}
