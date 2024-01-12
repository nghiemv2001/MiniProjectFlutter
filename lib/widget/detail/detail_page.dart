import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniprojectflutter/widget/detail/detail_body.dart';
import 'package:miniprojectflutter/widget/modal/listWeather.dart';
import 'package:miniprojectflutter/widget/providers/weather_provider.dart';
import 'package:provider/provider.dart';

class Detail_Page extends StatefulWidget {
  const Detail_Page({Key? key}) : super(key: key);

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff19D2FE),
            Color(0xff1D6CF3),
          ],
        ),
      ),
      child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherDetail(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            List<WeatherDentail> listDentail =
                snapshot.data as List<WeatherDentail>;
            print(listDentail);
            return Scaffold(
                extendBodyBehindAppBar: true,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: false,
                  title: Row(
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.location,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TyperAnimatedText("Ho Chi Minh City",
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: Duration(milliseconds: 100))
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ],
                  ),
                  actions: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                body: Padding(
                    padding: EdgeInsets.only(top: 120),
                    child: DetailBody(
                      listData: listDentail,
                    )));
          }),
    );
  }
}
