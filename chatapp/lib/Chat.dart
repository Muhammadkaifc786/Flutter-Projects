import 'package:chatapp/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatelessWidget {
  final Image img;
  final String name ;
  final bool status ;
  Chat({super.key,
  required this.img,
  required this.name,
  required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 8),
                child: InkWell(
                  hoverColor: Colors.grey,
                  onTap: () {
                    Navigator.pop(
                      context,
                      
                      );
                    
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: img.image, fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.aBeeZee(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      status ? "Online" : "Offline",
                      style: GoogleFonts.aBeeZee(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.videocam, size: 30),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.call, size: 23),
              ),
            ],
          ),
          Flexible(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: 20,
                  width: 47,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 237, 237),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Today")),
                ),
                Expanded(
                  child: Container(), // Placeholder for chat messages or other content
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Icon(Icons.add, size: 30),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    child: Center(
                      child: TextField(
                        style: TextStyle(
                          fontSize: 18,
                          decoration: TextDecoration.none, // Remove underline from text
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black), // Set border color to black
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black), // Keep border black when focused
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black), // Keep border black when enabled
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(Icons.camera_alt),
                ),
                Icon(Icons.keyboard_voice),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
