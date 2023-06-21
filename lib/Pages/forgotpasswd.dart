import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'LoginPageState.dart';

class forgotpasswd extends StatefulWidget {
  const forgotpasswd({Key? key}) : super(key: key);

  @override
  State<forgotpasswd> createState() => _forgotpasswdState();
}

class _forgotpasswdState extends State<forgotpasswd> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: const Text("Şifremi Unuttum"),),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [Text("Şifrenizi Yenilme için Bilgilerinizi giriniz",
                style: TextStyle(
                  fontSize: 20,
                ),)],
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: "E-postanızı veya numaranızı giriniz",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value2){
                  if(value2==null || value2.isEmpty){
                    return 'Doldurulması Zorunlu Alan';
                  }return null;
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  MaterialButton(
                    child: const Text("Giriş Yap"),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),)
                  ),
                  MaterialButton(
                    child: const Text("Gönder"),
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                  )
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}
