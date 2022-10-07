import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:usprint/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  var mainc = Color.fromARGB(255, 46, 119, 255);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.app_registration),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.login_rounded),
          ),
        ],
        title: Image.asset(
          "assets/images/us.png",
          height: 35,
        ),
        backgroundColor: mainc,
      ),
      body: Bodi(),
      drawer: Drawer(),
      bottomNavigationBar: Container(
        color: mainc,
        padding: const EdgeInsets.all(16.3),
        child: GNav(
            // rippleColor: Colors.grey, // tab button ripple color when pressed
            // hoverColor: Colors.blueGrey, // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 20,
            tabActiveBorder:
                Border.all(color: Colors.white, width: 0), // tab button border
            tabBorder: Border.all(color: mainc, width: 1), // tab button border
            tabShadow: [
              BoxShadow(color: Colors.white.withOpacity(0), blurRadius: 8)
            ], // tab button shadow
            curve: Curves.easeIn, // tab animation curves
            duration:
                const Duration(milliseconds: 300), // tab animation duration
            gap: 4, // the tab button gap between icon and text
            color: Colors.white, // unselected icon color
            activeColor: Colors.white, // selected icon and text color
            iconSize: 25, // tab button icon size
            tabBackgroundColor:
                Colors.purple.withOpacity(0.1), // selected tab background color
            padding: const EdgeInsets.symmetric(
                horizontal: 18, vertical: 3), // navigation bar padding
            tabs: const [
              GButton(
                icon: Icons.home_rounded,
                text: 'Home',
              ),
              GButton(
                icon: Icons.chat_rounded,
                text: 'Chat',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ]),
      ),
    );
  }
}

class Bodi extends StatefulWidget {
  const Bodi({super.key});

  @override
  State<Bodi> createState() => _BodiState();
}

class _BodiState extends State<Bodi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Hello Human"),
            )),
      ),
    );
  }
}
