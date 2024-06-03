import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

import '../../services/location.dart';

class WeatherUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  int tempCurrent = 0;
  int tempTomorrow = 0;
  int tempMinSun = 0, tempMaxSun = 0;
  int tempMinMon = 0, tempMaxMon = 0;
  int tempMinTue = 0, tempMaxTue = 0;
  int tempMinWed = 0, tempMaxWed = 0;
  int tempMinThur = 0, tempMaxThur = 0;
  int tempMinFri = 0, tempMaxFri = 0;
  int tempMinSat = 0, tempMaxSat = 0;
  String summary = '';
  Location location = Location();

  Future<void> getCurrentPosition() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      location.latitude = position.latitude;
      location.longitude = position.longitude;
      await location.getCityName();
    } catch (e) {
      print(e);
    }
  }

  Future<void> getWeather() async {
    try {
      await getCurrentPosition();
      WeatherFactory wf = WeatherFactory('aee984876d36307705fd1304385869c7');
      Weather weather = await wf.currentWeatherByLocation(location.latitude!, location.longitude);
      List<Weather> forecast = await wf.fiveDayForecastByLocation(location.latitude!, location.longitude);

      setState(() {
        tempCurrent = weather.temperature?.celsius?.toInt() ?? 0;
        summary = weather.weatherDescription ?? 'No description available';

        tempMaxSun = forecast[0].tempMax?.celsius?.toInt() ?? 0;
        tempMinSun = forecast[0].tempMax?.celsius?.toInt() ?? 0;
        tempMaxMon = forecast[1].tempMax?.celsius?.toInt() ?? 0;
        tempMinMon = forecast[1].tempMax?.celsius?.toInt() ?? 0;
        tempMaxTue = forecast[2].tempMax?.celsius?.toInt() ?? 0;
        tempMinTue = forecast[2].tempMax?.celsius?.toInt() ?? 0;
        tempMaxWed = forecast[3].tempMax?.celsius?.toInt() ?? 0;
        tempMinWed = forecast[3].tempMax?.celsius?.toInt() ?? 0;
        tempMaxThur = forecast[4].tempMax?.celsius?.toInt() ?? 0;
        tempMinThur = forecast[4].tempMax?.celsius?.toInt() ?? 0;
        tempMaxFri = forecast[5].tempMax?.celsius?.toInt() ?? 0;
        tempMinFri = forecast[5].tempMax?.celsius?.toInt() ?? 0;
        tempMaxSat = forecast[6].tempMax?.celsius?.toInt() ?? 0;
        tempMinSat = forecast[6].tempMax?.celsius?.toInt() ?? 0;
        tempTomorrow = tempMaxMon;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: ListTile(
                    title: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '${location.cityName}',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Center(
                      child: Text(
                        'Today',
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Column(
            children: <Widget>[
              Image.asset(
                'assets/images/weather_icon.png',
                color: Colors.black,
                scale: 1.5,
              ),
              Text(
                '$tempCurrent°C',
                style: TextStyle(
                  fontSize: 100.0,
                  color: Colors.black,
                ),
              ),
              Text(
                '$summary',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              )
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Center(
                    child: Text(
                      'Tomorrow',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/weather_icon.png',
                        color: Colors.black,
                        scale: 2.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        '$tempTomorrow°C',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Row(
          //   children: <Widget>[
          //     ReusableExpandedDays(
          //       textMaxDegrees: '$tempMaxSun',
          //       textMinDegrees: '$tempMinSun',
          //       textDay: 'S',
          //     ),
          //     ReusableExpandedDays(
          //       textDay: 'M',
          //       textMaxDegrees: '$tempMaxMon',
          //       textMinDegrees: '$tempMinMon',
          //     ),
          //     ReusableExpandedDays(
          //       textDay: 'T',
          //       textMaxDegrees: '$tempMaxTue',
          //       textMinDegrees: '$tempMinTue',
          //     ),
          //     ReusableExpandedDays(
          //       textDay: 'W',
          //       textMaxDegrees: '$tempMaxWed',
          //       textMinDegrees: '$tempMinWed',
          //     ),
          //     ReusableExpandedDays(
          //       textDay: 'T',
          //       textMaxDegrees: '$tempMaxThur',
          //       textMinDegrees: '$tempMinThur',
          //     ),
          //     ReusableExpandedDays(
          //       textDay: 'F',
          //       textMaxDegrees: '$tempMaxFri',
          //       textMinDegrees: '$tempMinFri',
          //     ),
          //     ReusableExpandedDays(
          //       textDay: 'S',
          //       textMaxDegrees: '$tempMaxSat',
          //       textMinDegrees: '$tempMinSat',
          //     ),
          //
          //   ],
          // ),
        ],
      ),
    );
  }
}