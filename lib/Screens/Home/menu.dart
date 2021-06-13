import 'package:deal_care/Screens/BrainGames/braingames.dart';
import 'package:deal_care/Screens/Feedback/feedback.dart';
import 'package:deal_care/Screens/Gallery/gallery.dart';
import 'package:deal_care/Screens/Home/home_page.dart';
import 'package:deal_care/Screens/Quiz/quize.dart';
import 'package:deal_care/Screens/Registration/profile.dart';
import 'package:deal_care/Screens/TO-DO/HomeTODO.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {

  Widget menugrid(String image, Widget path){
    return Card(
      color: Colors.grey.shade800,
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => path));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Menu',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 3: Logout',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          {
            Navigator.pop(context);
            Navigator.pop(context);

            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => HomePage()));
          }
          break;
        case 2:
          {
            Navigator.pop(context);
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => Profile()));
          }
          break;
        case 3:
          {
            Navigator.pop(context);
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => FeedbackForm()));
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(

            appBar: AppBar(
              backgroundColor: Colors.teal.shade700,
              title: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              //  backgroundColor: Colors.lightGreen.shade900,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.teal.shade700,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'Menu',
                  backgroundColor: Colors.teal.shade700,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile',
                  backgroundColor: Colors.teal.shade700,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz),
                  label: 'More',
                  backgroundColor: Colors.teal.shade700,
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.white,
              onTap: _onItemTapped,
            ),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(40),
              crossAxisSpacing: 40,
              mainAxisSpacing: 40,
              crossAxisCount: 2,
              children: <Widget>[
                menugrid('assets/images/To-Do.png', TodoHome()),
                menugrid('assets/images/Camera.png', Gallery()),
                menugrid('assets/images/BrainGames.png',BrainMenu() ),
                menugrid('assets/images/Quiz.png', Quizzler()),
                menugrid('assets/images/Puzzle.png', TodoHome()),
                menugrid('assets/images/To-Do.png', TodoHome()),
              ],
            )),
      ),
    );
  }
}
