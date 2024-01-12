import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:miniprojectflutter/apps/config/theme_custom.dart';
import 'package:miniprojectflutter/utils/constant.dart';
import 'package:miniprojectflutter/widget/bottom_navigation/bottom_navigation_custom.dart';
import 'package:miniprojectflutter/widget/modal/weather.dart';
import 'package:miniprojectflutter/widget/providers/weather_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => WeatherProvider(),
        child: MaterialApp(
            theme: ThemeCustom.themeLight,
            debugShowCheckedModeBanner: false,
            home: Bottom_Navigation_Custom()),
      ),
    );

class day12_appWeather extends StatefulWidget {
  const day12_appWeather({Key? key}) : super(key: key);

  @override
  State<day12_appWeather> createState() => _day12_appWeatherState();
}

class _day12_appWeatherState extends State<day12_appWeather> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [
              Color(0xff19D2FE),
              Color(0xff1D6CF3),
            ],
          ),
        ),
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherCurrent(),
          initialData: null,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              return Container(
                child: Text("No data"),
              );
            }
            Weather data = snapshot.data as Weather;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                home_Weather_Icon(nameIcon: data.weather[0].main),
                home_Temperature(
                  Temp: data.main.temp,
                ),
                home_Location(
                  nameLocation: data.name,
                ),
                SizedBox(
                  height: 40,
                ),
                home_DetailWeather(
                  humidity: data.main.humidity,
                  speedWind: data.wind.speed,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class home_Weather_Icon extends StatelessWidget {
  const home_Weather_Icon({super.key, required this.nameIcon});
  final nameIcon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width / 2,
      child: Image.asset(
        assetsCustom.getLinkImg(nameIcon),
        fit: BoxFit.cover,
      ),
    );
  }
}

class home_Temperature extends StatelessWidget {
  const home_Temperature({super.key, required this.Temp});
  final num Temp;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          Temp.round().toString(),
          style: TextStyle(
              fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          "0",
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }
}

class home_Location extends StatelessWidget {
  const home_Location({super.key, required this.nameLocation});
  final String nameLocation;
  @override
  Widget build(BuildContext context) {
    final df = DateFormat("dd-MM-yyyy");
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/icons/location.png"),
            SizedBox(
              width: 20,
            ),
            Text(
              nameLocation,
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 17,
        ),
        Text(
          df.format(DateTime.now()),
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ],
    );
  }
}

class home_DetailWeather extends StatelessWidget {
  const home_DetailWeather(
      {super.key, required this.humidity, required this.speedWind});
  final num humidity, speedWind;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Image.asset("assets/icons/Vector.png"),
            Text(
              speedWind.toString(),
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Image.asset("assets/icons/humidity.png"),
            Text(
              humidity.toString(),
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
