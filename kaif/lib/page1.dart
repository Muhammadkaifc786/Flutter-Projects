import 'package:flutter/material.dart';
import 'package:kaif/page2.dart';
import 'package:kaif/profile.dart';
import 'package:kaif/setting.dart';
class firstpage extends StatefulWidget {
   firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
int selection=0;
  void navigate(int index){
    setState(() {
      selection=index;
    });
  }
final List page=[
  secondpage(),setting(),profile(),
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
          title: Text("First Page")


      ),
      body: page[selection],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:selection,
        onTap: navigate,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',

          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.purple[100],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite,size: 48,)
            ),

            // ListTile(
            //   leading: Icon(Icons.home),
            //   title: Text("H O M E"),
            // ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>secondpage(),
                    ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("L O G O U T"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G"),
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //
      //     child: Text("Go to Second"),
      //     onPressed: (){
      //       Navigator.push(context,
      //           MaterialPageRoute(builder: (context)=>secondpage(),
      //       ),
      //       );
      //     },
      //   ),
      // ),
    );

  }
}
