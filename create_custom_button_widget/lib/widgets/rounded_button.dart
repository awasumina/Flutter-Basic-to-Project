import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedButton({
    required this.btnName,
  
    this.callback,
    this.bgColor = Colors.blueAccent,
    this.icon,
    this.textStyle,
    }
  );


  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: (){
        callback!();

    }, 
    //If icon is not null, it creates a Row widget, If icon is null, it simply creates a Text widget displaying the btnName text
    child:icon!=null? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon!,
        Container(
          width: 11,
        ),
        Text(btnName,style: textStyle,)
      ],

    ) :Text(btnName,style: textStyle,),

    style:ElevatedButton.styleFrom(
      foregroundColor:bgColor,
      shadowColor: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      )
    ) ,
    );
  }
}