import 'package:flutter/material.dart';
import '../Pages/account.dart';

theme(){
  bool th=gettheme();
    if(th==true){
      print(th);
        return lightdeco;
    }
    else{
        return darkdeco;
    }
}

const lightdeco=BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.black38,Colors.grey,Colors.white]
    )
);
const darkdeco=BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.black38,Colors.grey,Colors.black]
    )
);




