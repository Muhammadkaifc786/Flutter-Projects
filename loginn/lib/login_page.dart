import 'package:flutter/material.dart';
import 'package:loginn/home_page.dart';
class login_page extends StatefulWidget {

  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name='';
 bool change=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 12),
          child: Column(
          children: [
            Image.network('https://cdni.iconscout.com/illustration/premium/thumb/login-page-4468581-3783954.png?f=webp',height: 300,),
            SizedBox(height: 1),
            Text("Welcome $name",style: TextStyle(
            fontSize: 25,fontWeight: FontWeight.bold
          ),),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
              child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "UserName",
                      labelStyle: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold
                      )
                    ),
                onChanged:(value){
                      name = value;
                      setState(() {

                      });
                },
                validator: (value){
                  if(value==null||value.isEmpty)
                  {
                    return "Username Can't be Empty";
                  }
                  return null;

                },
              ),
            ),
            // SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
              child: TextFormField(obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",

                    labelStyle: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold
                    )
                ),
                validator: (value){
                  if(value==null||value.length < 6)
                  {
                    return "Password must be atleast 6";
                  }
                  return null;

                },
              ),
            ),

          Container(padding: EdgeInsets.symmetric(horizontal: 9),
              alignment: Alignment.topLeft,
              child: Text("Forget Password",style: TextStyle(
                color: Colors.deepPurpleAccent,fontSize: 15
              ),))
            ,
          SizedBox(height: 15,),
           GestureDetector(
             onTap: () {
               change=true;
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => home_page()), // Replace with your HomePage class
               );
             },

            child: Container(
              height: 50,
              width: 120,
              alignment: Alignment.center,
              child: Text("Login",style: TextStyle(
                fontSize: 25,color: Colors.white
              ),),
              decoration: BoxDecoration(
                color:Colors.deepPurpleAccent
                    , borderRadius: BorderRadius.circular(15)
              ),
            ),
          )
            ,

          ],
          ),
        ),
      ),
    );
  }
}
