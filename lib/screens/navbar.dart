import 'package:flutter/material.dart';
import 'package:medical_mobile/screens/homepage.dart';
import 'package:medical_mobile/screens/profile.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('Notes'),
    Text('Events'),
CallDamo(),
    Text(""),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        iconSize: 35,unselectedItemColor: Colors.grey,

      ),
    );
  }
}
myStyle(double? Fs, [FontWeight? Fw,Color? clr]){
  return GoogleFonts.robotoMono(
    fontSize: Fs,
    fontWeight: Fw,
    color: clr,

  );
}