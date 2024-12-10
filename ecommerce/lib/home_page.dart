import 'package:ecommerce/MyButton.dart';
import 'package:ecommerce/Text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class homePage extends StatelessWidget {
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PassWordController = TextEditingController();
  final void Function()? onTap;
   homePage({super.key,required this.onTap});
void Login(){

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.message,size: 60,color: Colors.grey.shade500),
            SizedBox(height: 10,),
            Text("Welcome Back You were Missed",style: GoogleFonts.outfit(
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
            SizedBox(height: 30,),
            Mybutton(
              TexT: "Login",
              onTap: Login,
            ),
            SizedBox(height: 25,),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member? "),
                GestureDetector(
                  onTap: onTap,
                  child: Text("Register Now",style: TextStyle(
                    color: Colors.green
                  ),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
