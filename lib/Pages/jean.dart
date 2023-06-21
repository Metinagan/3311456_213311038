import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared/custom_theme.dart';
import 'man.dart';

class jean extends StatefulWidget {
  const jean({Key? key}) : super(key: key);

  @override
  State<jean> createState() => _jeanState();
  
 

}

class _jeanState extends State<jean> {
   String jeantitle='Skinny Fit Jean';
   String jeanprice='50';

 late List<String> jeanimage=[
  'assets/images/jean/1.jpg',
  'assets/images/jean/2.jpg',
  'assets/images/jean/3.jpg',
  'assets/images/jean/4.jpg',
  'assets/images/jean/5.jpg',
  'assets/images/jean/6.jpg',
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
                    Text(jeantitle,style: const TextStyle(fontSize: 25)),
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
                  itemCount: jeanimage.length,
                  itemBuilder: (context,i,id){
                  return GestureDetector(
                    child: Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          jeanimage[i],
                          width:320 ,
                          height: 480,
                          fit: BoxFit.cover,
                        ),),
                    ),
                    onTap: (){
                      var assets= jeanimage[i];
                    },
                  );
                }),
                const SizedBox(height: 20),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.arrow_downward_outlined,size: 40,),
                  Text("Detayli bilgi",style: TextStyle(fontSize: 20),),
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
                      Text("99% Pamuk,1% Elastan üretilmiştir.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20),
                      Text("Skinny Fit: Esnek Kumaş, Normal Bel, Dar Paça,Vücudu saran",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20),
                      Text("Modelin Ölçüleri: Boy: 1.91, Göğüs: 94 Bel: 84,5, Kalça: 93",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20),
                      Text("Kapama stili: Düğme",style: TextStyle(fontSize: 15),),

                    ],
                  ),
                ),
                
                const SizedBox(height: 100),


                
                
                
      ],
        )
        )
        )
        )
    );
  }
  


}
