

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopv5/Pages/phones.dart';


import '../shared/custom_theme.dart';

class apple extends StatefulWidget {
  const apple({Key? key}) : super(key: key);

  @override
  State<apple> createState() => _appleState();
}

class _appleState extends State<apple> {
  late String appletitle="İphone 13";
 
  final List<String> appleimage=[
    'assets/images/phone/r2.png',
    'assets/images/phone/r3.png',
    'assets/images/phone/r7.png',
    'assets/images/phone/r8.png',
    'assets/images/phone/r9.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: theme(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children:[
                  const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: const Icon(
                      Icons.arrow_back_ios_sharp,size: 30,color: Colors.white,),
                        onPressed: () =>
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => const phones()),)
                    ),
                    SizedBox(width: 25,),
                    Text(appletitle,style: const TextStyle(fontSize: 25)),
                    SizedBox(width: 25,),
                    SizedBox(width: 25,),
                  ],
                ),
                const SizedBox(height: 10),
                  CarouselSlider.builder(
                      options: CarouselOptions(
                        enlargeCenterPage:true,
                        height: 480,
                        autoPlay: false,
                        autoPlayInterval: const Duration(seconds: 3),
                        reverse: false,
                        aspectRatio: 5.0,
                      ),
                      itemCount: appleimage.length,
                      itemBuilder: (context,i,id){
                        return GestureDetector(
                          child: Container(
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.transparent),
                            ),
                            child: ClipRRect(borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                appleimage[i],
                                width:320 ,
                                height: 480,
                                fit: BoxFit.cover,
                              ),),
                          ),
                          onTap: (){
                            var assets= appleimage[i];
                          },
                        );
                      }),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.arrow_downward_outlined,size: 40,),
                      Text("Detaylı bilgi",style: TextStyle(fontSize: 20),),
                      Icon(Icons.arrow_downward_outlined,size:40),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10,left: 5,right: 5,bottom: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:
                      const [
                        SizedBox(height: 20),
                        Text("Ekran Özellikleri",style: TextStyle(fontSize: 20),),
                        SizedBox(height: 20),
                        Text("Ekran boyutu 6.1 inç",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Ekran yenileme hızı 120 Hz",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Ekran teknolojisi OLED",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Batarya Özellikleri",style: TextStyle(fontSize: 20),),
                        SizedBox(height: 20),
                        Text("Batarya kapasitesi 3095 mAh",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("20 W hızlı şarj",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Temel Donanım",style: TextStyle(fontSize: 20),),
                        SizedBox(height: 20),
                        Text("Apla A15 bionic",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("128 GB depolama",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Özellikler",style: TextStyle(fontSize: 20),),
                        SizedBox(height: 20),
                        Text("Suya dayanıklılık",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Toza dayanıklılık",style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                 
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        )
    );
  }
}
