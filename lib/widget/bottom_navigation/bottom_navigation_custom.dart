import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniprojectflutter/main.dart';
import 'package:miniprojectflutter/widget/detail/detail_page.dart';

class Bottom_Navigation_Custom extends StatefulWidget {
  const Bottom_Navigation_Custom({Key? key}) : super(key: key);

  @override
  State<Bottom_Navigation_Custom> createState() =>
      _Bottom_Navigation_CustomState();
}

class _Bottom_Navigation_CustomState extends State<Bottom_Navigation_Custom> {
  List<BottomNavigationBarItem> listItemNavigation = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.list_bullet), label: 'List')
  ];
  List<Widget> listPages = [
    day12_appWeather(),
    Detail_Page(),
  ];
  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPages[activePage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activePage,
        backgroundColor: Colors.white24,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        elevation: 0,
        onTap: (index) {
          setState(() {
            activePage = index;
          });
        },
        items: listItemNavigation,
      ),
    );
  }
}
