

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/custom_theme.dart';
import 'monitors.dart';

class asus extends StatefulWidget {
  const asus({Key? key}) : super(key: key);

  @override
  State<asus> createState() => _asusState();
}

class _asusState extends State<asus> {
  late String asustitle="Asus Monitör";
 
  final List<String> asusimage=[
    'assets/images/monitors/r1.png',
    'assets/images/monitors/r2.png',
    'assets/images/monitors/r3.png',
    'assets/images/monitors/r4.png',
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
                                  builder: (context) => const monitors()),)
                    ),
                    SizedBox(width: 25,),
                    Text(asustitle,style: const TextStyle(fontSize: 25)),
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
                      itemCount: asusimage.length,
                      itemBuilder: (context,i,id){
                        return GestureDetector(
                          child: Container(
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.transparent),
                            ),
                            child: ClipRRect(borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                asusimage[i],
                                width:320 ,
                                height: 480,
                                fit: BoxFit.cover,
                              ),),
                          ),
                          onTap: (){
                            var assets= asusimage[i];
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
                        Text("Ekran boyutu 24 inç",style: TextStyle(fontSize: 15),),
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
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: const Text('Sepete ekle'),
                      ),
                    ],
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
