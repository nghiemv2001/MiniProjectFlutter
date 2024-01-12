import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniprojectflutter/Dentails/DetailScreen.dart';

class Day_5 extends StatefulWidget {
  const Day_5({Key? key}) : super(key: key);

  @override
  State<Day_5> createState() => _Day_5State();
}

class _Day_5State extends State<Day_5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Day5_2.jpg'),
                  fit: BoxFit.fill),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.centerRight, colors: [
                  Colors.white38.withOpacity(0.8),
                  Colors.black45.withOpacity(0.6)
                ]),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Địa điểm nổi tiếng ở Cần Thơ",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 300),
                      height: 210,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          markWidget(
                              image: "assets/images/Day5_5.jpg",
                              name: "Bến Ninh Kiều",
                              population: "1.1"),
                          markWidget(
                              image: "assets/images/Day5_3.jpg",
                              name: "Chợ nổi",
                              population: "1.3"),
                          markWidget(
                              image: "assets/images/Day5_4.jpg",
                              name: "Nhà cổ Bình Thủy",
                              population: "2.1"),
                          markWidget(
                              image: "assets/images/Day5_6.jpg",
                              name: "Cầu Cần Thơ",
                              population: "0.1"),
                          markWidget(
                              image: "assets/images/Day5_7.jpg",
                              name: "Bến Cát",
                              population: "0.6"),
                          markWidget(
                              image: "assets/images/Day5_8.jpg",
                              name: "Vườn cò Bằng Lăng",
                              population: "0.1"),
                          markWidget(
                              image: "assets/images/Day5_9.jpg",
                              name: "Thiền viện trúc lâm",
                              population: "1.1"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget markWidget({
    required String image,
    required String name,
    required String population,
  }) {
    return CupertinoButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              print('Image: $image');
              print('Name: $name');
              print('Population: $population');
              return DetailScreen(
                selectedImage: image,
                selectedName: name,
                selectedPopulation: population,
              );
            },
          ),
        );
      },
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white38),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),
                    child: Text(
                      population + " mi",
                      style: TextStyle(color: Colors.black45, fontSize: 13),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 110,
                    child: Text(
                      name,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
