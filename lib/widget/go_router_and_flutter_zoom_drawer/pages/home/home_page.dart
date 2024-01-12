import 'package:flutter/material.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/home/widgets/home_header.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/home/widgets/home_search.dart';
import 'package:transparent_image/transparent_image.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          children: <Widget>[
            HomeHeader(),
            SizedBox(
              height: 15,
            ),
            HomeSearch(),
            SizedBox(
              height: 15,
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1 / 1),
              itemBuilder: (BuildContext context, int index) {
                return Column(
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
                );
              },
              itemCount: 10,
            ))
          ],
        ),
      ),
    );
  }
}
