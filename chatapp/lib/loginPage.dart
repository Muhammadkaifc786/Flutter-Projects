import 'package:chatapp/HomePage.dart';
import 'package:chatapp/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4a2420),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Cont(context),
        ],
      ),
    );
  }

  Widget Cont(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Login Here",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Username",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Register Now",
                    style: TextStyle(color: Color(0xff4a2420),fontWeight: FontWeight.bold),
                  ),
                ), // sign in button
              ],
            ),
            SizedBox(height: 15),
            Butt(context),
            SizedBox(height: 15),
            Text("Login With "),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/fb.png", width: 50, height: 30),
                SizedBox(width: 10),
                Image.asset("images/icloud.png", width: 50, height: 30),
                SizedBox(width: 10),
                Image.asset("images/gmail.png", width: 50, height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Butt(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
      },
      child: Container(
        height: 50,
        width: 320,
        decoration: BoxDecoration(
          color: Color(0xff4a2420),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
