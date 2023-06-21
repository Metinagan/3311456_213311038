import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopv5/havadurumu/weather.dart';

import '../Pages/mainme.dart';

class MainScreen extends StatefulWidget {

  final WeatherData weatherData;

   MainScreen({super.key, required this.weatherData});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int temperature;
  late Icon weatherDisplayIcon;
  late AssetImage backgroundImage;
  late String city;
  late int feeltemperature;


  void updateDisplayInfo(WeatherData weatherData){
    setState(() {
      temperature = weatherData.currentTemperature.round();
      city = weatherData.city;
      WeatherDisplayData weatherDisplayData = weatherData.getWeatherDisplayData();
      backgroundImage = weatherDisplayData.weatherImage;
      weatherDisplayIcon = weatherDisplayData.weatherIcon;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateDisplayInfo(widget.weatherData);

  }
  var dateTime = DateTime.now();
  late int hour= dateTime.hour;
  late int minute=dateTime.minute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: backgroundImage
         )
       ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 25,),
            IconButton(icon: const Icon(
              Icons.arrow_back_ios_sharp,size: 30,color: Colors.white,),
                onPressed: () =>
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => const mainmen()),)
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                weatherDisplayIcon,
                Text('$hour : '+'$minute',style: const TextStyle(fontSize:50,color: Colors.white),),
              ],
            ),
            const SizedBox(height: 15,),
            Center(
              child: Text('$temperature°',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 80.0,
                    letterSpacing: -5
                ),
              ),
            ),
            const SizedBox(height: 15,),

            Center(
              child: Text('$city',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    letterSpacing: -5
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}