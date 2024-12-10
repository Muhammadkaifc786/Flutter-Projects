import 'package:chatapp/CallPage.dart';
import 'package:chatapp/Chat.dart';
import 'package:chatapp/Pic.dart';
import 'package:chatapp/SettingPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  List<bool> statusList = List<bool>.filled(8, false);

  final List<String> listt = [
    "Kaif", "Adil", "Jasmin", "Dravid", "John", "Sara", "Frank", "Travr"
  ];

  final List<Image> img = [
    Image.asset("images/1.jpeg"),
    Image.asset("images/2.jpeg"),
    Image.asset("images/3.jpeg"),
    Image.asset("images/4.jpeg"),
    Image.asset("images/5.jpeg"),
    Image.asset("images/6.jpeg"),
    Image.asset("images/7.jpeg"),
    Image.asset("images/8.jpeg"),
  ];

  final List<String> Msg = [
    "Khahn ho Bhai",
    "Keys Khahn h",
    "Kasa ho Bhai",
    "Hi bro",
    "Project bana diya",
    "FLutter aati h",
    "Mn Ghar Pounch gaya Hoin",
    "Mn jo tumko Book di thi wo wapas kroo"
  ];

  final List<String> Timee = [
    "1:00 PM", "1:01 PM", "1:30 PM", "1:45 PM", "2:00 PM", "2:07 PM", "2:20 PM", "2:30 PM"
  ];

  final List<int> Notify = [2, 1, 3, 4, 1, 2, 5, 10];

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [BuildGui(context), CallPage(), SettingPage()];

    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Color(0xff4a2420),
        buttonBackgroundColor: Color(0xff4a2420),
        height: 50,
        items: <Widget>[
          Icon(Icons.chat, size: 30, color: Colors.white),
          Icon(Icons.call_outlined, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget BuildGui(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarrr(),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listt.length,
                itemBuilder: (context, index) {
                  return StatusBar(listt[index], img[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chats",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4a2420),
                    ),
                  ),
                  Icon(
                    Icons.menu,
                    color: Color(0xff4a2420),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: listt.length,
              itemBuilder: (context, index) {
                return ChatCard(
                  img[index],
                  listt[index],
                  Msg[index],
                  Timee[index],
                  Notify[index],
                  context,
                  statusList[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget AppBarrr() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 17),
            child: Text(
              "Convo",
              style: GoogleFonts.aBeeZee(
                fontSize: 50,
                color: Color(0xff4a2420),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget StatusBar(String name, Image img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: img.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: GoogleFonts.aBeeZee(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xff4a2420),
            ),
          ),
        ],
      ),
    );
  }

  Widget ChatCard(Image img, String name, String msg, String time, int notify, BuildContext context, bool Status) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 0),
      child: InkWell(
        onTap: () {
          setState(() {
            Status = true;
          });
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Chat(
                img: img,
                name: name,
                status: false,
              ),
            ),
          );
        },
        child: Container(
          color: Status ? Colors.green : Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
          height: 70,
          width: double.infinity,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PicPage(
                        Name: name,
                        img: img,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: img.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.aBeeZee(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      msg,
                      style: GoogleFonts.aBeeZee(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(time),
                  if (notify > 0)
                    Container(
                      height: 25,
                      width: 20,
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.yellow[600],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          notify.toString(),
                          style: const TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
