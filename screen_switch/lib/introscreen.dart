import 'package:flutter/material.dart';
import 'package:screen_switch/main.dart';

class introscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text('IntroPage'),
      ),

      body:Center(
        child: Column(
          children: [
            Text('Welcome', style:TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold
            )
            ),
        
            SizedBox(
              height: 11,
            ),
        
        
            ElevatedButton(onPressed: (){
        
              Navigator.push(
                context, MaterialPageRoute(builder: (context)
                {return MyHomePage(title: 'home page',);}
              )
              );
              
        
            }, child: Text('Next Screen')
            )
          ],
          ),
      )


    );


  }
} 