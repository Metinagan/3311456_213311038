import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared/custom_theme.dart';
import 'categories.dart';
import 'jean.dart';
import 'sweat.dart';

class man extends StatefulWidget {
  const man({Key? key}) : super(key: key);

  @override
  State<man> createState() => _manState();
}
final List<String> imagelist=[
  'assets/images/jean/1.jpg',
  'assets/images/jean/2.jpg',
  'assets/images/jean/3.jpg',
  'assets/images/jean/4.jpg',
  'assets/images/jean/5.jpg',
  'assets/images/jean/6.jpg',
];
final List<String> imagelist1=[
  'assets/images/sweat/1.jpg',
  'assets/images/sweat/2.jpg',
  'assets/images/sweat/3.jpg',
  'assets/images/sweat/4.jpg',
  'assets/images/sweat/5.jpg',
  'assets/images/sweat/6.jpg',
];
class _manState extends State<man> {
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
                  decoration: const BoxDecoration(shape: BoxShape.circle,),
                  child: IconButton(icon: const Icon(
                      Icons.arrow_back_ios_sharp,size: 30),
                      onPressed: () =>
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const categories()),)
                  ),
                ),
              ],
            ),
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
                  Text("Erkek Koyu Mavi Esnek Kumaş Kahve Tintli Skinny Fit Jeans Kot Pantolon",
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
                                builder: (context) => const jean()),)),
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
                  child: const Text("Limon Unısex Siyah Hoodie Kapüşonlu Sweatshırt",
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
                                builder: (context) => const sweat()),)),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
