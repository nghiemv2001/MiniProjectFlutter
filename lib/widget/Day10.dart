import 'package:flutter/material.dart';

class Day10 extends StatefulWidget {
  const Day10({Key? key}) : super(key: key);

  @override
  State<Day10> createState() => _Day10State();
}

class _Day10State extends State<Day10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          makeWidget(title1: "Box1", title2: "Box2"),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 160),
              child: Container(
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(170),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text("Helloword"),
                ),
              ),
            ),
          ),
          makeWidget(title1: "Box3", title2: "Box4")
        ],
      ),
    );
  }

  Widget makeWidget({title1, title2}) {
    return Expanded(
      flex: 1,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomRight,
              color: Colors.green,
              child: Text(
                title1,
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              alignment: Alignment.bottomRight,
              child: Text(
                title2,
                style: TextStyle(fontSize: 22),
              ),
            ),
          )
        ],
      ),
    );
  }
}
