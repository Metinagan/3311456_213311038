

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/custom_theme.dart';
import 'bot.dart';
import 'categories.dart';
import 'palto.dart';

class women extends StatefulWidget {
  const women({Key? key}) : super(key: key);

  @override
  State<women> createState() => _womenState();
}
final List<String> imagelist=[
  'assets/images/bot/1.jpg',
  'assets/images/bot/2.jpg',
  'assets/images/bot/3.jpg',
  'assets/images/bot/4.jpg',
];
final List<String> imagelist1=[
  'assets/images/palto/1.jpeg',
  'assets/images/palto/2.jpeg',
  'assets/images/palto/3.jpeg',
  'assets/images/palto/4.jpeg',
  'assets/images/palto/5.jpeg',
];
class _womenState extends State<women> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(
          decoration: theme(),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: IconButton(icon: const Icon(
                      Icons.arrow_back_ios_sharp,size: 30,color:Colors.black,),
                        onPressed: () =>
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => const categories()),)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    height:180,
                    child: CarouselSlider.builder(
                        options: CarouselOptions(
                          enlargeCenterPage:true,
                          height: 360,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          reverse: false,
                          aspectRatio: 5.0,
                        ),
                        itemCount: imagelist.length,
                        itemBuilder: (context,i,id){
                          return GestureDetector(
                            child: Container(
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.white),
                              ),
                              child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  imagelist[i],
                                  width:240 ,
                                  height: 360,
                                  fit: BoxFit.cover,
                                ),),
                            ),
                            onTap: (){
                              var assets= imagelist[i];
                            },
                          );
                        }),

                  ),
                  Container(
                    width:200,
                    child: const
                    Text("Ten Bağcıklı Fermuarlı Bot",
                      textAlign: TextAlign.left,maxLines: 5,
                      style: TextStyle(fontSize: 20),),

                  ),
                  Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white12),
                    child:
                    IconButton(icon: const Icon(
                        Icons.arrow_forward_ios),
                        onPressed: () =>
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => const bot()),)),
                  )
                ],
              ),



              const SizedBox(height: 20),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child:
                    Container(
                      width: 120,
                      height:180,
                      child: CarouselSlider.builder(
                          options: CarouselOptions(
                            enlargeCenterPage:true,
                            height: 360,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            reverse: false,
                            aspectRatio: 5.0,
                          ),
                          itemCount: imagelist1.length,
                          itemBuilder: (context,i,id){
                            return GestureDetector(
                              child: Container(
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    imagelist1[i],
                                    width:240 ,
                                    height: 360,
                                    fit: BoxFit.cover,
                                  ),),
                              ),
                              onTap: (){
                                var assets= imagelist1[i];
                              },
                            );
                          }),
                    ),
                  ),
                  Container(
                    width:200,
                    child: const Text("E.H GRİ KUŞAKLI KAŞE KABAN",
                      textAlign: TextAlign.left,maxLines: 5,
                      style: TextStyle(fontSize: 20),),

                  ),
                  Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.grey),
                    child:
                    IconButton(icon: const Icon(
                        Icons.arrow_forward_ios),
                        onPressed: () =>
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => const palto()),)),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
