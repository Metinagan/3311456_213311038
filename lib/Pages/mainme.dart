import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../havadurumu/loading_screen.dart';
import '../shared/custom_theme.dart';
import 'LoginPageState.dart';
import 'account.dart';
import 'apple.dart';
import 'asus.dart';
import 'categories.dart';

class mainmen extends StatefulWidget {
  const mainmen({Key? key}) : super(key: key);
  @override
  State<mainmen> createState() => _mainmenState();
}


// ignore: camel_case_types
class _mainmenState extends State<mainmen> {


  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: Container(
        decoration: theme(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              //Başlık
              BuildBaslik(),
            //Banner
            BuildBanner(),
              //Butonlar
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,),
                        child:
                        IconButton(icon: const Icon(
                            Icons.view_headline_outlined,size: 30,color: Colors.black,),
                            onPressed: () =>
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => const categories()),)),
                      ),
                      const SizedBox(height: 10),
                      const Text("Categories",style:TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 280,
                        height: 70,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.blueGrey,Colors.blueAccent]
                            ),borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        child:
                        MaterialButton(
                          child:
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/weicon.png'),
                              const Text('Hava Durumu',style: TextStyle(fontSize: 20,color: Colors.white),)
                            ],
                          ),
                          onPressed: () =>
                              Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => const LoadScreen()),),

                        ),
                      ),
                    ],
                  )
                ],),
            ),
              const SizedBox(height:15),
              //Sales
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Sales",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  color: Colors.blue),),
                ],
              ),
              const SizedBox(height: 10),


          //items
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //%50
                      Container(
                        padding: EdgeInsets.all(4),
                        child: const Text("-%50",style: TextStyle(color: Colors.blue,fontSize: 20),),
                      ),

                      const SizedBox(height:10),

                      Container(
                        width: 200,
                        height: 200,
                        child: MaterialButton(
                          child: Image.asset("assets/images/phone/r1.png"),
                            onPressed: () =>
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => const apple()),)

                        ),
                      ),
                      const Text("Smartphones",
                        style: TextStyle(
                            fontSize: 18,color:Colors.black),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //%50
                      Container(
                        padding: EdgeInsets.all(4),
                        child: const Text("-%50",style: TextStyle(color: Colors.blue,fontSize: 20),),

                      ),
                      const SizedBox(height:10),
                      //Telefon Resmi
                      Container(
                        width: 200,
                        height: 200,
                        child: MaterialButton(
                            child: Image.asset("assets/images/monitors/r1big.png"),
                            onPressed: () =>
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => const asus()),)

                        ),
                      ),
                      const Text("Monitor",
                        style: TextStyle(
                            fontSize: 18,color:Colors.black),)
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              //Nawbar
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFE0ECF8)),
                    child: IconButton(icon: const Icon(
                        Icons.home_outlined),
                        onPressed: () =>
                            Navigator.push(context,MaterialPageRoute(
                              builder: (context) => mainmen()),))),
                  
                  IconButton(icon: const Icon(
                      Icons.search),
                      onPressed: () =>
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),)),
                  IconButton(icon: const Icon(
                      Icons.shopping_cart_outlined),
                      onPressed: () =>
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) =>  mainmen()),),),
                  IconButton(icon: const Icon(
                      Icons.account_circle_outlined),
                      onPressed: () =>
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) =>  const account()),),),

                ],
              ),

            ],
          ),
        )));
  }
}

Widget BuildBaslik(){
  return const Padding(
    padding: EdgeInsets.only(top: 16.0),
    child: Text("Home",style: TextStyle(
        fontSize: 32,
        color: Color(0xff0a1034),
        fontWeight: FontWeight.bold
      ),
    ),
  );
}
Widget BuildBanner(){
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child:Container(
      width:double.infinity,
      padding:const EdgeInsets.only(left: 24,right: 36,top: 14,bottom: 18),
      decoration: BoxDecoration(
          color: const Color(0xff0001fc),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Bose Home Speaker",style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight:FontWeight.w600),
            ),
            SizedBox(height: 4,),
            Text("USD 279",style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight:FontWeight.w500),
            )],
        ),
          Container(
              width: 150,
              height: 75,
              child: const Image(image: AssetImage('assets/images/speaker.png')))
        ],
      ),
    ),);
}
