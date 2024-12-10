import 'package:flutter/material.dart';

import 'MyButton.dart';
import 'Text_field.dart';
import 'package:google_fonts/google_fonts.dart';
class RegisterPage extends StatelessWidget {
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PassWordController = TextEditingController();

  final void Function()? onTap;final TextEditingController ConfirmWordController = TextEditingController();
   RegisterPage({super.key,required this.onTap});
  void Register(){

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade300,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.message,size: 60,color: Colors.grey.shade500),
            SizedBox(height: 10,),
            Text("Let's Create an Account for You",style: GoogleFonts.outfit(
              fontSize: 18,color: Colors.grey.shade500,
            ),),
            SizedBox(height: 20,),
            MyTextField(
              HintTT: "Email",
              hide: false,
              controll: EmailController,
            ),
            SizedBox(height: 15,),
            MyTextField(
              HintTT: "Password",
              hide: true,
              controll: PassWordController,
            ),

            SizedBox(height: 25,),
            MyTextField(
              HintTT: "Confirm Password",
              hide: false,
              controll: ConfirmWordController,
            ),
            SizedBox(height: 30,),
            Mybutton(
              TexT: "Register",
              onTap: Register,
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account?"),
                GestureDetector(
                  onTap: onTap,
                  child: Text(" Login",style: TextStyle(
                      color: Colors.green
                  ),),
                ),
              ],
            )
          ],
        ),
      ),
    );;
  }
}
