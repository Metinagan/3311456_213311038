// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../services/google_signin.dart';
import '../shared/custom_theme.dart';
import 'account.dart';
import 'signin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage> {
  static late String email;
  static late String password;

  get mail{
    return email;
  }
  get paswd{
    return password;
  }

  final formkey = GlobalKey<FormState>();
  final firebaseauth=FirebaseAuth.instance;

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        onPressed:() async {
         await GoogleSignHelper.instance.signOut();
        } ,
      ),
     appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context); },),title: Text('Giriş Yap'),),
      body: Container(
        decoration: theme(),
        padding: const EdgeInsets.all(12),
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  usermail(),
                emptybox(),
                  userpassword(),
                emptybox(),
                  const kaydolbutonu(),
                emptybox(),
                  girisyapbutonu(context),
                emptybox(),
                  LoginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  
  Wrap LoginButton() {
    return Wrap(
                  spacing: 10,
                  children: <Widget>[
                    FloatingActionButton.extended(
                      backgroundColor: Colors.green,
                      label: const Text("Google Login"),
                      icon: const Icon(Icons.flag),
                      onPressed: ()async{
                        await GoogleSignHelper.instance.signIn();
                      }),
                  ]
                );
  }

  SizedBox emptybox() => const SizedBox(height: 12);

  TextButton girisyapbutonu(BuildContext context) {
    return TextButton(
                onPressed: () async {
                if(formkey.currentState!.validate()){
                 formkey.currentState!.save();
                    try{
                       final userResult=await firebaseauth.signInWithEmailAndPassword(
                    email: email,password: password);
                    // ignore: use_build_context_synchronously
                    Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => const account()),);
                    print(userResult.user!.email);
                    }catch(e){
                      print(e.toString());
                    }
                }else{
                 }
                     }, child: const Text("Giriş Yap",style: TextStyle(fontSize: 20),),
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
                  email = value!;
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
                  password = value!;
                },
              );
    }
  }

// ignore: camel_case_types
class kaydolbutonu extends StatelessWidget {
  const kaydolbutonu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
                child: const Text('Kaydol',style: TextStyle(fontSize: 17),),
                onPressed: () =>
      Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => const signin()),)
    );
  }
}


