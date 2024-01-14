import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/product/bottomProduct.dart';
import 'package:transparent_image/transparent_image.dart';

class Product_Page extends StatefulWidget {
  const Product_Page({Key? key}) : super(key: key);

  @override
  State<Product_Page> createState() => _Product_PageState();
}

bool favoriteButtonSate = true;

class _Product_PageState extends State<Product_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CupertinoButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  ),
                ),
                FavoriteButton(status: favoriteButtonSate)
              ],
            ),
            const Text(
              "Salad Menu",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            const SizedBox(height: 5),
            const Text(
              "Veggie Salad",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(height: 5),
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 75, left: 75),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:
                        "https://images.unsplash.com/photo-1501959915551-4e8d30928317?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: BottomProduct(),
            ),
          ],
        ),
      ),
    );
  }

  Widget FavoriteButton({status}) {
    return (status == true)
        ? CupertinoButton(
            onPressed: () {
              setState(() {
                favoriteButtonSate = !favoriteButtonSate;
              });
            },
            child: const Icon(
              Icons.favorite_outline,
              color: Colors.grey,
            ),
          )
        : CupertinoButton(
            onPressed: () {
              setState(() {
                favoriteButtonSate = !favoriteButtonSate;
              });
            },
            child: const Icon(
              Icons.favorite_outline,
              color: Colors.red,
            ),
          );
  }
}
