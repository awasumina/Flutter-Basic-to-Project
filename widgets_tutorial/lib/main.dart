import 'package:flutter/cupertino.dart';
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

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),


// //use of expanded widget such that it covers entire space so wrap with expanded widget
//       body: Row(
//         mainAxisAlignment : MainAxisAlignment.center,
//         children: [
//           Expanded(
//             flex:2, //to show the ratio space to be given
//             child: Container(
//               width: 50,
//               height: 50,
//               color: Colors.amber,
//             ),
//           ),

//           Expanded(
//             flex:3,
//             child: Container(
//               width:50,
//               height: 50,
//               color: const Color.fromARGB(255, 47, 37, 6),
//             ),
//           ),

//           Expanded(
//             flex:4,
//             child: Container(
//               width: 50,
//               height: 50,
//               color: Colors.indigo,
//             ),
//           ),


//             Expanded(
//               flex:1,
//               child: Container(
//               width: 50,
//               height: 50,
//               color: const Color.fromARGB(255, 181, 63, 157),
//               ),
//             )
//         ],
//       )



// //use of Circle Avatar
//       body:const CircleAvatar(
//         backgroundImage: AssetImage('assets/images/1.JPG'),
//         backgroundColor: Colors.amber,
//         radius: 100,
//       )

// //adding a custom text font 
//           body:Text(
//             'hello world',
//             style:TextStyle(fontFamily: 'LatoFamily')
//           ),







// //if overflow spance happens, can use scrollable or listview but i can use wrap if i want its overflown then the overflown part gets shown in another column


//   body:Wrap(
//     spacing: 11,
//     children: [
//       Container(
//         width: 100,
//         height: 100,
//         color: Colors.amber,
//       ),


//       Container(
//     width: 100,
//     height: 100,
//     color: const Color.fromARGB(255, 7, 255, 119),
//   ),



//   Container(
//     width: 100,
//     height: 100,
//     color: const Color.fromARGB(255, 255, 7, 143),
//   ),


//   Container(
//     width: 100,
//     height: 100,
//     color: Color.fromARGB(255, 7, 176, 255),
//   ),



  
//       Container(
//         width: 100,
//         height: 100,
//         color: const Color.fromARGB(255, 63, 48, 3),
//       ),


//       Container(
//     width: 100,
//     height: 100,
//     color: const Color.fromARGB(255, 7, 255, 119),
//   ),



//   Container(
//     width: 100,
//     height: 100,
//     color: const Color.fromARGB(255, 255, 7, 143),
//   ),


//   Container(
//     width: 100,
//     height: 100,
//     color: Color.fromARGB(255, 7, 176, 255),
//   ),
//     ],
//   ),




//to style the text using RichText
body: RichText(
  text: TextSpan(
    style: TextStyle(color:Colors.grey, fontSize: 24),
    children:<TextSpan>[
      TextSpan(text: 'Hello'),
      TextSpan(text: 'World!', 
        style: TextStyle(fontSize: 34, color:Colors.blue, fontWeight: FontWeight.bold
      )
      ),


      TextSpan(
        text: 'Welcome to ',
      ),

      TextSpan(
        text: 'my world',
        style: TextStyle(
          fontWeight:FontWeight.bold,
          fontSize: 43,
          color:Colors.deepOrangeAccent,
          fontStyle: FontStyle.italic,
        )
      )
    ] 
    ),
    ),









      
    );
  }
}
