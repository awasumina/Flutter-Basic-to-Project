import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: DrawerWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: TabsWebList(),
      ),
      body: ListView(
        children: [
          //first page
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: SansBold("Hello I'm", 15),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SansBold("Sumina Awa", 55.0),
                    SansBold("Web and App Developer", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(children: [
                      Icon(Icons.email),
                      SizedBox(width: 20),
                      Sans('suminaawa123@gmail.com', 15.0),
                    ]),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(children: [
                      Icon(Icons.call),
                      SizedBox(width: 20),
                      Sans('0000000000', 15.0),
                    ]),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(children: [
                      Icon(Icons.location_pin),
                      SizedBox(width: 20),
                      Sans('Banepa-5,Kavre', 15.0),
                    ]),
                  ],
                ),
                CircleAvatar(
                  radius: 149.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.blueGrey,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundImage: AssetImage("assets/images/1circle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //second page
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/web.jpg", height: widthDevice / 1.9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold('About me', 40.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Hello, I am Sumina Awa, I specialized in Web and App development tools",
                        15.0),
                    Sans(
                        'I strive to ensure astounding performance with state of',
                        15.0),
                    Sans(
                        'the art security for Android, Ios, Web, Mac, Linux and Windows',
                        15.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Sans("Flutter", 15.0),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Sans("Firebase", 15.0),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Sans("Android", 15.0),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Sans("Ios", 15.0),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Sans("Windows", 15.0),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          //third page

          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do?", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWeb(
                      imagepath: "assets/images/webL.png",
                      text: "Web Development",
                    ),
                    AnimatedCardWeb(
                      imagepath: "assets/images/app.png",
                      text: "App Development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                      imagepath: "assets/images/firebase.png",
                      text: "Back-end Development",
                    ),
                  ],
                )
              ],
            ),
          ),

          //fourth page
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                            text: "First Name",
                            Containerwidth: 350,
                            hintText: "Please write first name"),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                            text: "Email Name",
                            Containerwidth: 350,
                            hintText: "Please write email address"),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                            text: "Last Name",
                            Containerwidth: 350,
                            hintText: "Please write last name"),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                            text: "Phone Number",
                            Containerwidth: 350,
                            hintText: "Please write phone number"),
                      ],
                    )
                  ],
                ),
                TextForm(
                  text: "Message",
                  Containerwidth: widthDevice / 1.5,
                  hintText: "Please write your message",
                  maxLine: 10,
                ),
                MaterialButton(
                  onPressed: () {},
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
