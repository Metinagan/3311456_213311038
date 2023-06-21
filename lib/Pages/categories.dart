

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../shared/custom_theme.dart';
import 'mainme.dart';
import 'man.dart';
import 'monitors.dart';
import 'phones.dart';
import 'women.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: theme(),
        child: ListView(
          children: [
            const SizedBox(height: 20),
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
                                builder: (context) => const mainmen()),)
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      child: const Text("Erkek Giyim ",style: TextStyle(fontSize: 40),),
                      onPressed: () =>
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const man()),)
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: const Text("Bayan Giyim",style: TextStyle(fontSize: 40),),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const women()),)
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: const Text("Çocuk Giyim",style: TextStyle(fontSize: 40),),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const categories()),)
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: const Text("Telefon",style: TextStyle(fontSize: 40),),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const phones()),)
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: const Text("Tablet",style: TextStyle(fontSize: 40),),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const categories()),)
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: const Text("Bilgisayar",style: TextStyle(fontSize: 40),),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const categories()),)
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: const Text("Monitör",style: TextStyle(fontSize: 40),),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const monitors()),)
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: const Text("Kulaklık",style: TextStyle(fontSize: 40),),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const categories()),)
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: const Text("Kırtasiye",style: TextStyle(fontSize: 40),),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const categories()),)
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: const Text("Hediyelik Eşya",style: TextStyle(fontSize: 40),),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const categories()),)
                )
              ],
            ),
            const SizedBox(height: 20),
            
           
          ],
        ),
      ),
    );
  }
}



