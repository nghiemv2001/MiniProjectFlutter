import 'package:flutter/material.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/category/heade_category.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/category/list_item_category.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: <Widget>[
              HeaderCategory(),
              SizedBox(
                height: 10,
              ),
              List_Item_Category(),
            ],
          ),
        ),
      ),
    );
  }

  Widget ListView_separated() {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemBuilder: (BuildContext context, int index) {
        return AspectRatio(
          aspectRatio: 5 / 2,
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.orange),
            child: FadeInImage.memoryNetwork(
              fit: BoxFit.cover,
              placeholder: kTransparentImage,
              image:
                  "https://images.unsplash.com/photo-1501959915551-4e8d30928317?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}
