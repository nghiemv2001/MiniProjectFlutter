import 'package:flutter/material.dart';

class Day6_NavBar extends StatefulWidget {
  const Day6_NavBar({Key? key}) : super(key: key);

  @override
  State<Day6_NavBar> createState() => _Day6_NavBarState();
}

class _Day6_NavBarState extends State<Day6_NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 230,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Võ Trọng Nghiêm"),
            accountEmail: Text("nghiemV2001@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/day6_avatar.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://media.cntraveler.com/photos/6539d1998ab4257d24ee47e4/16:9/w_1920%2Cc_limit/Lenc%25CC%25A7o%25CC%2581is-Maranhenses-National-Park-marcreation-M0wxmEHpBtE-unsplash.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notification_add),
            onTap: () {},
            title: Text("Notify"),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            onTap: () {},
            title: Text("Shopping Cart"),
          ),
          ListTile(
            leading: Icon(Icons.favorite_outline),
            onTap: () {},
            title: Text("Favorite"),
          ),
          ListTile(
            leading: Icon(Icons.inventory_outlined),
            onTap: () {},
            title: Text("Invoice"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            onTap: () {},
            title: Text("Logout"),
          )
        ],
      ),
    );
  }
}
