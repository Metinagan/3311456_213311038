import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared/custom_theme.dart';
import 'women.dart';

class palto extends StatefulWidget {
  const palto({Key? key}) : super(key: key);

  @override
  State<palto> createState() => _paltoState();
}

class _paltoState extends State<palto> {
  late String paltotitle="Kaşe Kaban";
 
  final List<String> paltoimage=[
  'assets/images/palto/1.jpeg',
  'assets/images/palto/2.jpeg',
  'assets/images/palto/3.jpeg',
  'assets/images/palto/4.jpeg',
  'assets/images/palto/5.jpeg',
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
                    Text(paltotitle,style: const TextStyle(fontSize: 25)),
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
                                paltoimage[i],
                                width:320 ,
                                height: 480,
                                fit: BoxFit.cover,
                              ),),
                          ),
                          onTap: (){
                            var assets= paltoimage[i];
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
                      children: const [
                        SizedBox(height: 20),
                        Text("Model Bilgileri",style: TextStyle(fontSize: 20),),
                        SizedBox(height: 20),
                        Text("1.70 cm 53 kg.",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Göğüs: 85 cm, Bel: 62 cm, Basen: 93 cm",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("ÜRÜN ÖZELLİKLERİ",style: TextStyle(fontSize: 20),),
                        SizedBox(height: 20),
                        Text("Boy:115 cm",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Göğüs Eni :50 cm ",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Omuz:37 cm",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Kol boyu:60 cm",style: TextStyle(fontSize: 15),),

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
