import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared/custom_theme.dart';
import 'LoginPageState.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}
  late String name;
  late String surname;
  late String mail;
  late String paswd;

class _signinState extends State<signin> {
  
  final firebaseauth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: const Text("Üye Ol"),),
      body: Container(
        decoration: theme(),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Ad
               username(),
                const SizedBox(height: 15),
                //Soyad
                usersurname(),
                
                const SizedBox(height: 15),
                //e-posta
                usermail(),
                
                const SizedBox(height: 15),
                //şifre
                userpassword(),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MaterialButton(
                        child: const Text('Giriş Yap'),
                        onPressed: ()=>
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),)
                    ),
      
                    MaterialButton(
                      child: const Text("Üye Ol"),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          try{
                            var userResult=await firebaseauth.createUserWithEmailAndPassword(
                            email: mail, password: paswd);
                            print(userResult.user!.uid);
      
                            await FirebaseFirestore.instance.collection('users').doc(mail).set({
                              'name':name,
                              'surname':surname,
                              'password':paswd,
                            });
      
                          }catch(e){
                            print(e.toString());
                          }                          
                        }
                        else{
      
                        }
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}

  TextFormField username(){
    return TextFormField(
       decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: "İsim",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Doldurulması Zorunlu Alan';
                  }return null;
                },
                onSaved: (value) {
                 name = value!;
                },
    );
  }
  TextFormField usersurname(){
    return TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: "Soyisim",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Doldurulması Zorunlu Alan';
                  }return null;
                },
                onSaved: (value) {
                  surname = value!;
                },
              );
  }
  TextFormField usermail(){
    return TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: "E-posta",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Doldurulması Zorunlu Alan';
                  }return null;
                },
                onSaved: (value) {
                  mail = value!;
                },
              );
  }
  TextFormField userpassword(){
  return TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: "Şifre",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Doldurulması Zorunlu Alan';
                  }return null;
                },
                onSaved: (value) {
                  paswd = value!;
                },
              );
}


