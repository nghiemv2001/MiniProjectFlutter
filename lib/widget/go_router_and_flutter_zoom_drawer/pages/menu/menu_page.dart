import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/apps/router/routerName.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              onTap: () {
                context.goNamed(RouterName.home);
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                context.goNamed(RouterName.home);
              },
              leading: Icon(
                CupertinoIcons.square_favorites,
                color: Colors.white,
              ),
              title: Text(
                "Favorite",
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                context.goNamed(RouterName.category);
              },
              leading: Icon(
                CupertinoIcons.list_bullet,
                color: Colors.white,
              ),
              title: Text(
                "Category",
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                context.goNamed(RouterName.categoryProduct);
              },
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Setting",
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
