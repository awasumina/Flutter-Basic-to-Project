

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var arrNames = ['aa','bb','cc','dd','ee'];

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      // //button
      // body: TextButton(
      //   child: Text('Click here!!'),
      //   onPressed: (){
      //     print("text button tapped");
      //   },
      //   onLongPress: (){
      //     print("button is long pressed");
      //   },
      // )


      // body : ElevatedButton(
      //   child: Text('elevated button'),
      //     onPressed: (){
      //     print("elevated button tapped");
      //   },
      //   onLongPress: (){
      //     print("elevated is long pressed");
      //   },
      //   )




      // body : OutlinedButton(
      //   child: Text('outlined button'),
      //     onPressed: (){
      //     print("outlined button tapped");
      //   },
      //   onLongPress: (){
      //     print("outlined is long pressed");
      //   },
      //   )




      // //add images
      // body:Center(
      //   child: Container(
      //     width: 500,
      //     height: 100,
      //     child: Image.asset('assets/images/1.JPG')
      //     )
      //   )
    

      // //column and row widget
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Text('A', style:TextStyle(fontSize: 25),),
      //     Text('B'),
      //     Text('C'),
      //     Text('D'),
      //     Text('E'),
      //   ],
      // )




      // //inkwell - it responds to touch action
      // body: Center(
      //   child: InkWell(
      //     onTap: (){
      //       print('tapped');
      //     },

      //     onLongPress: (){
      //       print('long pressed');
      //     },

      //     onDoubleTap: (){
      //       print(' double tapped');
      //     },
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.amber,
      //     ),
      //   ),
      // )





      // //scrollview

      // body:Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(bottom: 11.0),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin:EdgeInsets.only(bottom: 11),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.lightBlue,
      //                 ),
                  
                  
      //                                  Container(
      //                   margin:EdgeInsets.only(bottom: 11),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.pinkAccent,
      //                 ),
                  
                  
      //                                  Container(
      //                   margin:EdgeInsets.only(bottom: 11),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.deepOrange,
      //                 ),
                  
                  
      //                                  Container(
      //                   margin:EdgeInsets.only(bottom: 11),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.greenAccent,
      //                 ),
                  
      //               ],
      //             ),
      //           ),
      //         ),
          
      //         Container(
      //           margin:EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.orangeAccent,
      //         ),
          
      //         Container(
      //           margin:EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.pinkAccent,
      //         ),
          
      //         Container(
      //           margin:EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //       ],
      //     ),
      //   ),
      // )



      // // listview
      // body: Center(
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     reverse:true,
      //     children :[
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('one',style: TextStyle(fontSize: 21, fontWeight:FontWeight.w500 ),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('two',style: TextStyle(fontSize: 21, fontWeight:FontWeight.w500 ),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('three',style: TextStyle(fontSize: 21, fontWeight:FontWeight.w500 ),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('four',style: TextStyle(fontSize: 21, fontWeight:FontWeight.w500 ),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('five',style: TextStyle(fontSize: 21, fontWeight:FontWeight.w500 ),),
      //       )
      //     ],
        
      //   ),
      // )


      // //listview
      // body:ListView.builder(itemBuilder: (context, index) {
      //   return Text(arrNames[index],style: TextStyle(fontSize: 21, fontWeight:FontWeight.w500 ),);
      // },
      // itemCount: arrNames.length,
      // )


    //   //use of listTile in ListView
    //   //use of card widget for elevation
    //   body:ListView.separated(itemBuilder: (context,index){
    //     return ListTile(
    //     leading:Card(
    //       elevation:7,
    //       shadowColor: Colors.blueAccent,
    //       child: Text('${index+1}')),
    //     title: Text(arrNames[index]),
    //     subtitle:Text('Number'),
    //     trailing: Icon(Icons.add),
    //   );
    //   },

    //   itemCount: arrNames.length,
    //   separatorBuilder: (contect,index){
    //     return Divider(height: 20,thickness: 1,);
    //   },
    // )






    //to place one  widget above another using stack widget i.e overlaying
    body:Stack(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.amber,
        ),


        Positioned(   //positioned is used to place the widget s relative to other widgets or screen
          left: 21,
          top: 21,
          child: Container(
            height: 200,
            width: 160,
            color: Color.fromARGB(255, 7, 98, 255),
          ),
        )


      ],
    )



    );
  }
}














