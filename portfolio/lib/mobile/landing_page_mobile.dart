import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.tealAccent,
            style: BorderStyle.solid,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(5.0)),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      //such that the app bar doesnt cover the space though its made transparent
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 35.0,
          color: Colors.black,
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
                child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black)),
                child: Image.asset('assets/images/1circle.png'),
              ),
            )),
            TabsMobile(text: "Home", route: '/'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Works", route: '/works'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Blog", route: '/blog'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "About", route: '/about'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Contact", route: '/contact'),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async =>
                      await ("https://www.instagram.com/awasumina"),
                  icon: SvgPicture.asset(
                    "assets/images/instagram.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async =>
                      await ("https://www.twitter.com/awasumina"),
                  icon: SvgPicture.asset(
                    "assets/images/twitter.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async =>
                      await ("https://www.github.com/awasumina"),
                  icon: SvgPicture.asset(
                    "assets/images/github.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(children: [
        //intro, first section
        CircleAvatar(
          radius: 117.0,
          backgroundColor: Colors.tealAccent,
          child: CircleAvatar(
            radius: 110.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/1circle.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Column(
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
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: SansBold("Hello I'm", 15.0),
                  ),
                  SansBold("Sumina Awa", 40.0),
                  SansBold("Flutter Developer", 20.0),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 3.0,
                    children: [
                      Icon(Icons.email),
                      Icon(Icons.call),
                      Icon(Icons.location_pin),
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 3.0,
                    children: [
                      Sans("suminaawa123@gmail.com", 15.0),
                      Sans("9861641630", 15.0),
                      Sans("Banepa-5, Kavre", 15.0)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: 90.0,
        ),
        //about me, second section
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SansBold("About Me", 35.0),
              Sans(
                  "Hello! I'm Sumina Awa, I specialized in flutter development",
                  15.0),
              Sans("I strive to ensure astounding performance with state of ",
                  15.0),
              Sans(
                  "the art of security for Android, Ios, Web, Mac,Linux", 15.0),
              SizedBox(
                height: 10.0,
              ),
              Wrap(
                spacing: 7.0,
                runSpacing: 7.0,
                children: [
                  tealContainer("Flutter"),
                  tealContainer("FireBase"),
                  tealContainer("Android"),
                  tealContainer("Windows"),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 60.0,
        ),

        //thirds section, What i do?
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SansBold("What I Do", 35.0),
            AnimatedCardWeb(
                imagepath: "assets/images/webL.png",
                text: "Web Development",
                width: 300.0),
            SizedBox(
              height: 35.0,
            ),
            AnimatedCardWeb(
              imagepath: "assets/images/app.png",
              text: "App Development",
              width: 300.0,
              fit: BoxFit.contain,
              reverse: true,
            ),
            SizedBox(
              height: 35.0,
            ),
            AnimatedCardWeb(
                imagepath: "assets/images/firebase.png",
                text: "Back end Development",
                width: 300.0),
            SizedBox(
              height: 35.0,
            ),

            //fourth section, contact section
            Wrap(
              runSpacing: 20.0,
              spacing: 20.0,
              alignment: WrapAlignment.center,
              children: [
                SansBold("Contact me", 35.0),
                TextForm(
                    text: "First Name",
                    Containerwidth: widthDevice / 1.4,
                    hintText: "Please write your first name"),
                TextForm(
                    text: "Last name",
                    Containerwidth: widthDevice / 1.4,
                    hintText: "Please write your last name"),
                TextForm(
                    text: "Email",
                    Containerwidth: widthDevice / 1.4,
                    hintText: "Please write your email address"),
                TextForm(
                    text: "Phone Number",
                    Containerwidth: widthDevice / 1.4,
                    hintText: "Please write your phone number"),
                TextForm(
                  text: "Message",
                  Containerwidth: widthDevice / 1.4,
                  hintText: "Message",
                  maxLine: 10,
                ),
                MaterialButton(
                  onPressed: () {},
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 60.0,
                  minWidth: widthDevice / 2.2,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ]),
    );
  }
}
