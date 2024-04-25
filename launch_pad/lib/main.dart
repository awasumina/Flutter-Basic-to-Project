import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Launch Pad",
        home: SafeArea(
          child: Scaffold(
              appBar: AppBar(title: Text('LaunchPad')),
              body: Center(
                child: Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    // Pad(
                    //     colorCenter: Color(0xffADCBFC),
                    //     colorOutline: Color(0xff067CCB),
                    //     note: "1.mp3",
                    //     ),
                          
                    // Pad(Color(0xffADCBFC),Color(0xff067CCB), "1.mp3"),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color(0xff067CCB),note: "1.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 6, 203, 19),note: "2.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 6, 164),note: "3.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 82, 6),note: "4.mp3",),

                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color(0xff067CCB),note: "5.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 6, 203, 19),note: "6.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 6, 164),note: "7.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 82, 6),note: "8.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color(0xff067CCB),note: "9.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 6, 203, 19),note: "10.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 6, 164),note: "11.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 82, 6),note: "12.mp3",),

                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color(0xff067CCB),note: "13.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 6, 203, 19),note: "14.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 6, 164),note: "15.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 82, 6),note: "16.mp3",),

                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color(0xff067CCB),note: "17.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 6, 203, 19),note: "18.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 6, 164),note: "19.mp3",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 82, 6),note: "20.wav",),

                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color(0xff067CCB),note: "21.wav",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 6, 203, 19),note: "22.wav",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 6, 164),note: "23.wav",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 82, 6),note: "24.wav",),

                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color(0xff067CCB),note: "25.wav",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 6, 203, 19),note: "26.wav",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 6, 164),note: "27.wav",),
                     Pad(colorCenter: Color(0xffADCBFC),  colorOutline: Color.fromARGB(255, 203, 82, 6),note: "28.wav",),

     
                  ],
                ),
              )
              ),
        )
            );
  }
}



class Pad extends StatefulWidget {
  
  final colorCenter;
  final colorOutline;
  final note;



  const Pad({
  required this.colorCenter,
  required this.colorOutline,
  required this.note,
  Key? key,
}) : super(key: key);




  @override
  State<Pad> createState() => _PadState();
}

class _PadState extends State<Pad> {
  late Color _colorCenter;    //private variables
  late Color _colorOutline;
  final player= AudioPlayer();
  @override
  void initState(){
    _colorCenter=widget.colorCenter;
    _colorOutline=widget.colorOutline;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    
    return GestureDetector(
      onTap: () async {
        setState(() {
          _colorCenter=Colors.white;
          _colorOutline=Colors.white;
          player.play(AssetSource(widget.note));
        });
await Future.delayed(Duration(milliseconds: 500));
        setState(() {
          _colorCenter=widget.colorCenter;
          _colorOutline=widget.colorOutline;
        });
      },
      child: Container(
                      width: width/4.3,
                      height: height/8.2,
                      color: Colors.blue,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(colors: [
                          _colorCenter,
                          _colorOutline,
                        ],
                        radius: 0.5,
                        ),
                        boxShadow: [BoxShadow(
                          color: Colors.pink,
                          blurRadius: 5.0,
                        )]
                      ),
                    ),
    );
  }
}
