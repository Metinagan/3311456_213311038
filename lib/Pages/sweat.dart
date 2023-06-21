import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared/custom_theme.dart';
import 'man.dart';

class sweat extends StatefulWidget {
  const sweat({Key? key}) : super(key: key);

  @override
  State<sweat> createState() => _sweatState();
}

class _sweatState extends State<sweat> {
  late String sweattitle="Unisex Hoodie";
  
  
  final List<String> sweatimage=[
    'assets/images/sweat/1.jpg',
    'assets/images/sweat/2.jpg',
    'assets/images/sweat/3.jpg',
    'assets/images/sweat/4.jpg',
    'assets/images/sweat/5.jpg',
    'assets/images/sweat/6.jpg',
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
                                  builder: (context) => const man()),)
                    ),
                    SizedBox(width: 25,),
                    Text(sweattitle,style: const TextStyle(fontSize: 25)),
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
                                sweatimage[i],
                                width:320 ,
                                height: 480,
                                fit: BoxFit.cover,
                              ),),
                          ),
                          onTap: (){
                            var assets= sweatimage[i];
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
                        Text("Mankenin üzerindeki ürün 32 bedendir.",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Ürünümüz Pamukpolyester B kalite kumaştan üretilmiştir.",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Ürünümüz hafif Şardonlu ve terletmez",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Modelin Ölçüleri: S Beden En : 54 cm Boy : 65 cm ",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Kesim: Oversize",style: TextStyle(fontSize: 15),),

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
