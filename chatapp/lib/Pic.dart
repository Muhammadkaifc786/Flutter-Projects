import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PicPage extends StatelessWidget {
  final String Name;
  final Image img;
   PicPage({super.key,
   required this.Name,
   required this.img});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
            SafeArea(child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios,color: Colors.white,))
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(Name,style: GoogleFonts.aBeeZee(color: Colors.white,
                fontSize: 25),),
              )
            ],
            )),
            
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Container(
                  alignment: Alignment.center,
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: img.image,
                    fit: BoxFit.cover
                    ),
                    
                ),),
              ),
            
        ],
      ),
    );
  }
}