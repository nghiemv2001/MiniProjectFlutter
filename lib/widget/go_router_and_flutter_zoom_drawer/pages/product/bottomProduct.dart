import 'package:flutter/material.dart';

class BottomProduct extends StatelessWidget {
  const BottomProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    "\$",
                    style: TextStyle(
                        fontSize: 37,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "18.25",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.w500,
                        color: Colors.orange),
                  ),
                  Text(
                    "12%",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.orange),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("16k"),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.orange,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "4.5",
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.grey),
                ],
              ),
              Text(
                "(500)",
                style: TextStyle(color: Colors.grey),
              ),
              Container(
                height: 20,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [Colors.orange, Colors.deepOrange]),
                ),
                child: Center(
                  child: Text(
                    'View Dentail',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.orange, Colors.deepOrange]),
            ),
            child: Center(
              child: Text(
                'Add To Cart',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.orange, Colors.deepOrange]),
            ),
            child: Center(
              child: Text(
                'Order Now',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
