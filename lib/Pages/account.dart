import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopv5/Pages/accountinformation.dart';
import 'package:switcher_button/switcher_button.dart';
import '../shared/custom_theme.dart';
import 'LoginPageState.dart';
import 'mainme.dart';

bool themedata=true;
gettheme(){
  return themedata;
}

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);
  @override
  State<account> createState() => _accountState();

  
}

// ignore: camel_case_types
class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Container(
        decoration: theme(),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(icon: const Icon(
                        Icons.arrow_back_ios,color:Colors.black38,),
                        onPressed: () =>
                            Navigator.push(context,MaterialPageRoute(
                              builder: (context) => mainmen()),)),
                  ],
                ),
                Column(
                  children: const [Icon(Icons.account_circle_outlined,size: 50,color:Colors.white,)],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      child: const Text("Metin Ağan",style: TextStyle(fontSize: 40,color: Colors.white),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SwitcherButton(
                      value: themedata,
                      onChange: (value) {
                        //print(value);
                        setState(() {
                          themedata=value;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
           
            const SizedBox(height: 70),
            Row(
              children: [
                FloatingActionButton.extended(
                  onPressed: () =>
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const AccounInfo()),),
                  label: Text("Hesap Bilgilerim"))
              ],
            ),
            const SizedBox(height: 10),
           
            const SizedBox(height: 15),
            Row(
              children: [
                Column(
                  children:const
                  [Text("   İndirim Kuponlarım",style: TextStyle(fontSize: 20,color: Colors.white),)],
                )
              ],

            ),
            const SizedBox(height: 10),
           
            const SizedBox(height: 15),
            Row(
              children: [
                Column(
                  children:const
                  [Text("   Siparişlerim",style: TextStyle(fontSize: 20,color: Colors.white),)],
                )
              ],

            ),
            const SizedBox(height: 10),
           
            const SizedBox(height: 15),
            Row(
              children: [
                Column(
                  children:const
                  [Text("   Şifremi Değiştir",style: TextStyle(fontSize: 20,color: Colors.white),)],
                )
              ],
            ),
            const SizedBox(height: 10),
            
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child: const Text("Çıkış Yap",style: TextStyle(fontSize: 22),),
                  onPressed: () =>
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=>const LoginPage()),),
                ),
              ],
            ),
            const SizedBox(height: 140),

            //NavBar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(icon: const Icon(
                    Icons.home_outlined,color: Colors.white,),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const mainmen()),)
                ),
                IconButton(icon: const Icon(
                    Icons.search,color: Colors.white),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),)),
                IconButton(icon: const Icon(
                    Icons.shopping_cart_outlined,color: Colors.white),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),)),
                Container(decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey),
                  child: IconButton(icon: const Icon(
                      Icons.account_circle_outlined),
                      onPressed: () =>
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const account()),)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}





void getData() async {
  try {
    var snapshot = await FirebaseFirestore.instance.collection('users').get();
    for (var doc in snapshot.docs) {
      var data = doc.data();
      var name = data['name'];
      var surname = data['surname'];
      var email = data['email'];
      print('name: $name, surname: $surname, email: $email');
    }
  } catch (e) {
    print(e.toString());
  }
}


