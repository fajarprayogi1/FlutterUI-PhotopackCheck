import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_world/widget/memberphotopack.dart';
import 'package:test_world/widget/photopacktop.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  int _selectedIndex = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget _buildicon(int index) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(30)),
      child: Icon(
        _icons[index],
        size: 25,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(FontAwesomeIcons.bars),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/twicelogo.png',
              fit: BoxFit.contain,
              height: 75,
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _icons
                .asMap()
                .entries
                .map((MapEntry map) => _buildicon(map.key))
                .toList(),
          ),
          SizedBox(height: 20),
          Photopacktop(),
          SizedBox(height: 20),
          MemberPhotopack(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(
              title: SizedBox.shrink(),
              icon: Icon(
                Icons.search,
                size: 30,
              )),
          BottomNavigationBarItem(
              title: SizedBox.shrink(),
              icon: Icon(
                Icons.local_pizza,
                size: 30,
              )),
          BottomNavigationBarItem(
              title: SizedBox.shrink(),
              icon: CircleAvatar(
                radius: 15.0,
                child: Image.asset('images/mina.jpg'),
              ))
        ],
      ),
    );
  }
}
