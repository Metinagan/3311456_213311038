

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopv5/Pages/women.dart';


import '../shared/custom_theme.dart';

class bot extends StatefulWidget {
  const bot({Key? key}) : super(key: key);

  @override
  State<bot> createState() => _botState();
}

class _botState extends State<bot> {
  late String title="Deri Bot";
  
  final List<String> botlist=[
    'assets/images/bot/1.jpg',
    'assets/images/bot/2.jpg',
    'assets/images/bot/3.jpg',
    'assets/images/bot/4.jpg',
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
                                  builder: (context) => const women()),)
                    ),
                    SizedBox(width: 25,),
                    Text(title,style: const TextStyle(fontSize: 25)),
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
                      itemCount: botlist.length,
                      itemBuilder: (context,i,id){
                        return GestureDetector(
                          child: Container(
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white),
                            ),
                            child: ClipRRect(borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                botlist[i],
                                width:320 ,
                                height: 480,
                                fit: BoxFit.cover,
                              ),),
                          ),
                          onTap: (){
                            var assets= botlist[i];
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 20),
                        Text("Renk: Ten rengi.",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Ürün özelliği: Fermuarlı",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Mevsim: Kışlık",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Kumaş türü: %100 suni deri",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Boy: 25cm",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Yüksekliği: Taban yüksekliği 5 cm",style: TextStyle(fontSize: 15),),



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

