import 'package:flutter/material.dart';

const linkAssets = 'assets/images/';

class assetsCustom {
  static String getLinkImg(String name) =>
      '$linkAssets${name.replaceAll(' ', "").toLowerCase()}.png';
}

Widget createTemp(num Temp, {double size = 100}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        Temp.round().toString(),
        style: TextStyle(
            fontSize: size, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      Text(
        "0",
        style: TextStyle(
            fontSize: size / 3,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    ],
  );
}
