//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}
//this class is for purpose of making variables mutable
class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result=0;
  final TextEditingController textEditingController = TextEditingController();
 
  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){

    final border =  OutlineInputBorder(
                borderSide: const BorderSide(
                  style: BorderStyle.solid,
                  width: 2,                 
                ),
              borderRadius:  BorderRadius.circular(20),
                // borderRadius: BorderRadius.all(Radius.circular(25)),
                // borderRadius: BorderRadius.horizontal(
                //   right :Radius.circular(25)),
            );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 85, 96),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 6, 85, 96),
        elevation: 0,
        title: const Text('Currency Converter',            //by default left
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        ),   
        // actions: [Text('exit')],

        centerTitle: true,  
      ),
      body:Center(
        child : Column(
        mainAxisAlignment: MainAxisAlignment.center,

      children : [
          Text(
          'NRP ${result!=0? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
          style :const TextStyle(
            fontSize: 35,
            // fontStyle: FontStyle.italic,
            fontWeight:FontWeight.bold,
            color: Color.fromARGB(255, 245, 245, 245),
          ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              onSubmitted: (value){
                // print('value');
              },
              style : const TextStyle(
                color : Colors.black,
              ),
              decoration:  InputDecoration(
                // label: Text(
                //   'Please enter the amount in USD',
                // style: TextStyle(
                //   color : Colors.white,
                // ),),
          
                // labelText: 'Please enter the amount in USD',
          
                hintText: 'Please enter the amount in USD',
                hintStyle:  const TextStyle(
                  color: Colors.black,
                ),
                prefixIcon: const Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder:border,
                enabledBorder:border,
              ),
            
            keyboardType: const TextInputType.numberWithOptions(
              decimal:true,
              signed: true,
            ),
            ),
          ),

          //button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                // result = double.parse(textEditingController.text)*81;
              //  if(kDebugMode) {   //(kDebugMode = !kReleaseMode && !kProfileMode){
               // print(textEditingController.text);
               // print(double.parse(textEditingController.text) * 81);
              //}
              setState(() {     //for purpose of rebuild using build function
                result = double.parse(textEditingController.text)*133.23;
                
              });
              }, 
            style : TextButton.styleFrom(
              backgroundColor:Colors.black,
              foregroundColor:Colors.white,    //for text color of button
              minimumSize: const Size(double.infinity, 50),              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              ),     
            child: const Text('Convert'), 
            ),
          ),
      ],
      ),
    ),
  );
  

 //   return const Scaffold();
  }
}




