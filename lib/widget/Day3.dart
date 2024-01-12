import 'package:flutter/material.dart';
import 'package:miniprojectflutter/animation/FaceAnimation_Day3.dart';

class Day3 extends StatefulWidget {
  const Day3({Key? key}) : super(key: key);

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Day3_1.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.4),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FadeAnimation(
                1,
                Text(
                  "YOUR DREAM",
                  style: TextStyle(
                      fontSize: 43,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              FadeAnimation(
                1,
                Text(
                  "Embrace, Pursue, and Achieve Your Dream: The Journey to Your Aspirations Starts Here!",
                  style: TextStyle(fontSize: 21, color: Colors.white54),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.yellow.withOpacity(0.2),
                      Colors.orange.withOpacity(0.4),
                      Colors.black.withOpacity(0.6)
                    ],
                  ),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: double.infinity,
                  child: Text(
                    "START",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
