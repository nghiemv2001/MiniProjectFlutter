import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String? selectedImage;
  final String? selectedName;
  final String? selectedPopulation;

  const DetailScreen({
    Key? key,
    this.selectedImage,
    this.selectedName,
    this.selectedPopulation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(selectedImage!), fit: BoxFit.fill),
            ),
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  colors: [
                    Colors.white38.withOpacity(0.8),
                    Colors.black45.withOpacity(0.6)
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent),
                    margin: EdgeInsets.only(top: 50, left: 20),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 34,
                      ),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
