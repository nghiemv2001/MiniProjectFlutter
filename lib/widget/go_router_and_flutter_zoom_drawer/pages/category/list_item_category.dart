import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class List_Item_Category extends StatelessWidget {
  const List_Item_Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1 / 1),
            itemBuilder: (BuildContext context, int index) {
              return AspectRatio(
                aspectRatio: 5 / 2,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          offset: Offset(1, 1),
                          color: Colors.green.shade500,
                          blurRadius: 2,
                        )
                      ]),
                  child: FadeInImage.memoryNetwork(
                    fit: BoxFit.cover,
                    placeholder: kTransparentImage,
                    image:
                        "https://images.unsplash.com/photo-1501959915551-4e8d30928317?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                ),
              );
            }));
  }
}
