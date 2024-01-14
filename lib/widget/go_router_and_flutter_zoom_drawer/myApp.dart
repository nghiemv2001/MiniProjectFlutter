import 'package:flutter/material.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/product/product_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Product_Page(),
    );
  }
}
