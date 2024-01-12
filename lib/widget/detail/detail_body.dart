import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:miniprojectflutter/utils/constant.dart';
import 'package:miniprojectflutter/widget/modal/listWeather.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.listData});
  final List<WeatherDentail> listData;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(left: 20, right: 20),
        itemBuilder: (context, index) {
          DateTime dateTime = DateTime.parse(listData[index].dtTxt);
          String formatDay = DateFormat("EEEE").format(dateTime);
          String formatTime = DateFormat('HH:MM').format(dateTime);
          return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          createTemp(listData[index].main.temp, size: 30),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            listData[index].weather[0].main,
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        formatDay,
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        formatTime,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 4,
                  child: Image.asset(
                    assetsCustom.getLinkImg(listData[index].weather[0].main),
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, _) => SizedBox(
              height: 15,
            ),
        itemCount: 20);
  }
}
