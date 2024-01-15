import 'package:flutter/material.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/home/widgets/home_header.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/home/widgets/home_list_item.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/home/widgets/home_search.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              HomeHeader(),
              SizedBox(height: 15),
              HomeSearch(),
              SizedBox(height: 15),
              HomeListCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
