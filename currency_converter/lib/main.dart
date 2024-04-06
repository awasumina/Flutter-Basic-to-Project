import 'package:currency_converter/currency_conveter_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main(){
  runApp(const MyApp());    
  //MyApp for material design
  //MyCupertinoApp for cupertino design
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});   
  
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
        home :CurrencyConverterMaterialPage(),
    );
   
  }
}


class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
   return const CupertinoApp(
        home :CurrencyConverterMaterialPage(),
    );
  }
}