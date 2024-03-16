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
    var arrcolor = [
      Color.fromARGB(255, 61, 4, 87),
      Color.fromARGB(255, 152, 11, 11),
      Colors.black,
      Color.fromARGB(255, 72, 191, 21),
      Color.fromARGB(255, 68, 23, 189),
      Color.fromARGB(255, 6, 143, 125),
      Color.fromARGB(255, 16, 128, 214),
      Color.fromARGB(255, 233, 222, 15),

    ];

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),

      
//body: 
      // Column(
      //   children: [
      //     Container(
      //       height: 200, //heigth fixed else the gridview.count takes entire heigth and content below its wont display
      //       child: GridView.count(crossAxisCount: 3, //number wise division of grid i.e is count=3 only 3 boxes in each row
      //       crossAxisSpacing: 11, //space column wise like padding
      //       mainAxisSpacing: 11,  //space provide row wise
      //       children: [
      //         Container(color: arrcolor[0]),
      //         Container(color: arrcolor[1]),
      //         Container(color: arrcolor[2]),
      //         Container(color: arrcolor[3]),
      //         Container(color: arrcolor[4]),
      //         Container(color: arrcolor[5]),
      //         Container(color: arrcolor[6]),
      //         Container(color: arrcolor[7]),
      //       ],),
      //     ),


      //     Container(
      //       height: 100,
      //     ),


      //      GridView.extent(maxCrossAxisExtent: 50, //size wise division of grid i.e how many 100 size width boxes in each row
      //     crossAxisSpacing: 11, //space column wise like padding
      //     mainAxisSpacing: 11,  //space provide row wise
      //     children: [
      //       Container(color: arrcolor[0]),
      //       Container(color: arrcolor[1]),
      //       Container(color: arrcolor[2]),
      //       Container(color: arrcolor[3]),
      //       Container(color: arrcolor[4]),
      //       Container(color: arrcolor[5]),
      //       Container(color: arrcolor[6]),
      //       Container(color: arrcolor[7]),
      //     ],),
      //   ],
      // )






  body: GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 11,
    mainAxisSpacing: 11,
  ),
  itemBuilder: (context, index) {
    return Container(
      color: arrcolor[index],
    );
  },
  itemCount: arrcolor.length,
)

      


    );
  }
}
