import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopv5/Pages/signin.dart';

class AccounInfo extends StatefulWidget {
  const AccounInfo({super.key});

  @override
  State<AccounInfo> createState() => _AccounInfoState();

}



class _AccounInfoState extends State<AccounInfo> {


  late String email=mail;
  late String password=paswd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hesap Bilgilerim'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: 
                   Text("$email"),
                )
              ],
            ),
      
          ],
        ),
      ),
    );
  }
}