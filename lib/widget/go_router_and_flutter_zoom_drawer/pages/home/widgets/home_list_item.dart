import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/apps/router/routerName.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeListCategory extends StatelessWidget {
  const HomeListCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 1),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            context.goNamed(RouterName.homeProduct);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          offset: Offset(1, 1),
                          color: Colors.grey.shade200,
                          blurRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      fit: BoxFit.cover,
                      image:
                          "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Mon an aaaaaaaaaaaaaaa",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        );
      },
      itemCount: 10,
    ));
  }
}
