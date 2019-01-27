import 'package:flutter/material.dart';
import 'package:newspedia_flutter/screens/auth/widgets/login_widget.dart';
import 'package:newspedia_flutter/screens/home/home.dart';
import 'package:newspedia_flutter/screens/main/widgets/placeholder_widget.dart';

class Main extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainState();
  }

}

class _MainState extends State<Main> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    PlaceholderWidget(Colors.orange),
    LoginWidget()
  ];

  final List<String> _title = [
    'Home',
    'Favourites',
    'Login',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text(_title[_currentIndex]),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                  Icons.home,
                  color: Colors.black38
              ),
              title: new Text('Home',
                  style: TextStyle(
                      color: _currentIndex == 0 ? Colors.blue : Colors.black38,
                      fontSize: 13
                  )
              ),
              activeIcon: new Icon(
                  Icons.home,
                  color: Colors.blue
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                  Icons.favorite,
                  color: Colors.black38
              ),
              title: new Text('Favourites',
                  style: TextStyle(
                      color: _currentIndex == 1 ? Colors.blue : Colors.black38,
                      fontSize: 13
                  )
              ),
              activeIcon: new Icon(
                  Icons.favorite,
                  color: Colors.blue
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                  Icons.person,
                  color: Colors.black38
              ),
              title: new Text('Profile',
                  style: TextStyle(
                      color: _currentIndex == 2 ? Colors.blue : Colors.black38,
                      fontSize: 13
                  )
              ),
              activeIcon: new Icon(
                  Icons.person,
                  color: Colors.blue
              ),
            ),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
