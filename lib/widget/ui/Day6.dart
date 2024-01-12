import 'package:flutter/material.dart';

import '../../SiderBar/Day6_NavBar.dart';

class Day_6 extends StatefulWidget {
  const Day_6({Key? key}) : super(key: key);

  @override
  State<Day_6> createState() => _Day_6State();
}

final List<Map<String, dynamic>> _listItem = [
  {
    'image': 'assets/images/day6_1.jpg',
    'name': 'Twins',
    'price': '10\$',
  },
  {
    'image': 'assets/images/day6_2.jpg',
    'name': 'Twins',
    'price': '20\$',
  },
  {
    'image': 'assets/images/day6_3.jpg',
    'name': 'Twins',
    'price': '12\$',
  },
  {
    'image': 'assets/images/day6_4.jpg',
    'name': 'Twins',
    'price': '14\$',
  },
  {
    'image': 'assets/images/day6_5.jpg',
    'name': 'Twins',
    'price': '18\$',
  },
  {
    'image': 'assets/images/day6_6.jpg',
    'name': 'Twins',
    'price': '23\$',
  },
  {
    'image': 'assets/images/day6_7.jpg',
    'name': 'Twins',
    'price': '12\$',
  },
  {
    'image': 'assets/images/day6_8.jpg',
    'name': 'Twins',
    'price': '11\$',
  },
  {
    'image': 'assets/images/day6_9.png',
    'name': 'Twins',
    'price': '9\$',
  },
  {
    'image': 'assets/images/day6_1.jpg',
    'name': 'Twins',
    'price': '130\$',
  },
];

class _Day_6State extends State<Day_6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      drawer: Day6_NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text("Home")),
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("0"),
                )),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                height: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("assets/images/day6_1.jpg"),
                      fit: BoxFit.fill),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      colors: [
                        Colors.black45.withOpacity(0.6),
                        Colors.white10.withOpacity(0.1)
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "Twins",
                          style: TextStyle(
                              fontSize: 52,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 50, right: 50, bottom: 10),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(20),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: _listItem
                      .map(
                        (e) => Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(e['image']),
                                  fit: BoxFit.cover),
                            ),
                            child: Stack(
                              children: <Widget>[
                                SizedBox(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(5),
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.green,
                                        shadowColor: Colors.greenAccent,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32.0)),
                                        minimumSize: Size(40, 40), //////// HERE
                                      ),
                                      onPressed: () {},
                                      child: Icon(Icons.shopping_cart)),
                                ),
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey.withOpacity(0.6)),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          e['name'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 26),
                                        ),
                                        Text(e['price'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 26))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
