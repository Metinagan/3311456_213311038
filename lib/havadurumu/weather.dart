import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';

import 'location.dart';

const apiKey = "66cf372f0023066591f89bfff28dec78";

class WeatherDisplayData{
  Icon weatherIcon;
  AssetImage weatherImage;

  WeatherDisplayData({required this.weatherIcon, required this.weatherImage});
}


class WeatherData{
  WeatherData({required this.locationData});

  LocationHelper locationData;
  late double currentTemperature;
  late int currentCondition;
  late String city;
  Future<void> getCurrentTemperature() async{
    Response response = await get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=${locationData.latitude}&lon=${locationData.longitude}&appid=${apiKey}&units=metric'));

    if(response.statusCode == 200){
      String data = response.body;
      var currentWeather = jsonDecode(data);

      try{
        currentTemperature = currentWeather['main']['temp'];
        currentCondition = currentWeather['weather'][0]['id'];
        city = currentWeather['name'];
      // ignore: empty_catches
      }catch(e){
      }

    }
    else{
      print("API den değer gelmiyor!");
    }

  }

  WeatherDisplayData getWeatherDisplayData(){
    if(currentCondition <600&&currentCondition>531){
      //hava bulutlu
      return WeatherDisplayData(
          weatherIcon: const Icon(
              FontAwesomeIcons.cloud,
              size: 75.0,
              color:Colors.white
          ),
          weatherImage: const AssetImage('assets/images/cloud.jpg'));
    }
    //hava karlı
    else if(currentCondition>599&&currentCondition<623)
      {return WeatherDisplayData(
          weatherIcon: const Icon(
              FontAwesomeIcons.snowman,
              size: 75.0,
              color:Colors.white
          ),
          weatherImage: const AssetImage('assets/images/snowy.jpg'));

      }
    //hava yağmurlu
    else if(currentCondition>499&&currentCondition<531)
    {return WeatherDisplayData(
        weatherIcon: const Icon(
            FontAwesomeIcons.cloudRain,
            size: 75.0,
            color:Colors.white
        ),
        weatherImage: const AssetImage('assets/images/rainy.jpg'));
    }
    else{
      //hava iyi
      //gece gündüz kontrolü
      var now = DateTime.now();
      if(now.hour >=19){
        return WeatherDisplayData(
            weatherIcon: const Icon(
                FontAwesomeIcons.moon,
                size: 75.0,
                color:Colors.white
            ),
            weatherImage: const AssetImage('assets/images/night.jpg'));
      }else{
        return WeatherDisplayData(
            weatherIcon: const Icon(
                FontAwesomeIcons.sun,
                size: 75.0,
                color:Colors.white
            ),
            weatherImage: const AssetImage('assets/images/sunny.jpg'));

      }
    }
  }


}