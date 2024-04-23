import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int appBar = 0;
  int scaffold = 0;
  List<Color> colors = [
    Colors.white,
    Colors.teal,
    Colors.orange,
    Colors.black,
    Colors.blue,
    Colors.pink,
  ];
  Random random = new Random();
  String kick = "Kick.wav";
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: colors[appBar],
            title: Text('Dashatar App'),
          ),
          body: Container(
            color: colors[scaffold],
            child: Center(
              child: MaterialButton(
                  child: Image.asset('assets/images/dashatar.png'),
                  onPressed: () {
                    appBar = random.nextInt(6);
                    scaffold = random.nextInt(6);
                    player.play(AssetSource(kick));
                    setState(() {});

                    //   Image.network(
                    //       "https://th.bing.com/th/id/R.67115404f598e3e8452b0ab80fade7ae?rik=hFurenrm065N6A&riu=http%3a%2f%2fclipart-library.com%2fimages%2f8ixKGzg8T.jpg&ehk=N7skGSrr%2b4byFHx4zACsQ0xLzqA%2fKhDtmKKh4ubrnTE%3d&risl=&pid=ImgRaw&r=0")
                  }),
            ),
          )),
    );
  }
}
