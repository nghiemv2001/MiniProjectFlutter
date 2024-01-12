import 'package:flutter/material.dart';
import 'package:miniprojectflutter/animation/FadeAnimation_Day4.dart';

class Day_4 extends StatefulWidget {
  const Day_4({Key? key}) : super(key: key);

  @override
  State<Day_4> createState() => _Day_4State();
}

class _Day_4State extends State<Day_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Day4_1.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.9),
                            Colors.black.withOpacity(0.5)
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                  1.2,
                                  Text(
                                    "Join Wick",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 42,
                                        color: Colors.white54),
                                  ),
                                ),
                                SizedBox(width: 10),
                                FadeAnimation(
                                  1.2,
                                  Text(
                                    "(Baba Yaga)",
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white54),
                                  ),
                                ),
                              ],
                            ),
                            FadeAnimation(
                              1.2,
                              Text(
                                "People keep asking if I'm back, and I haven't really had an answer. But now, yeah, I'm thinkin' I'm back.",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                            1.5,
                            Text(
                              "Excommunicado Assassin",
                              style: TextStyle(
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          FadeAnimation(
                            1.8,
                            Text(
                              "🔫 Weapons: A master of firearms and close combat",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          FadeAnimation(
                            2.1,
                            Text(
                              "🚗 Ride: Legendary '69 Ford Mustang",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          FadeAnimation(
                            2.4,
                            Text(
                              "🌟 Known for his unbreakable determination, exceptional skills, and the code of honor among assassins.",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          FadeAnimation(
                            2.4,
                            Text(
                              "Highlights",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(
                            1.2,
                            Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  makeVideo(image: 'assets/images/Day4_2.jpg'),
                                  makeVideo(image: 'assets/images/Day4_3.jpg'),
                                  makeVideo(image: 'assets/images/Day4_4.jpg'),
                                  makeVideo(image: 'assets/images/Day4_5.jpg'),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(
                  2,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow[700]),
                    child: Align(
                      child: Text(
                        "Hire",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w400,
                            color: Colors.white54),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Align(
          child: Icon(
            Icons.play_arrow,
            color: Colors.white54,
            size: 54,
          ),
        ),
      ),
    );
  }
}
