import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
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
    return SafeArea(
        child: Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            // introduction, first section
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 113.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/images/1circle.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About Me", 35.0),
                  SizedBox(
                    height: 10.0,
                  ),
                  Sans(
                      "Hello! I'm Sumina Awa, I specialized in flutter development",
                      15.0),
                  Sans(
                      "I strive to ensure astounding performance with state of ",
                      15.0),
                  Sans("the art of security for Android, Ios, Web, Mac,Linux",
                      15.0),
                  SizedBox(
                    height: 15.0,
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
              height: 40.0,
            ),

            //web development, second section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCardWeb(
                  imagepath: "assets/images/webL.png",
                  width: 200.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold("Web development", 20.0),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Sans(
                "I'm here to build your presence online with state of the art web apps",
                15.0),

            //app development third section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                AnimatedCardWeb(
                  imagepath: "assets/images/app.png",
                  width: 200.0,
                  reverse: true,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold("App Development ", 20.0),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Sans(
                "Do your need high performance and beautiful add? Don't worry, i have got covered",
                15.0),

            //back end development, fourth section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                AnimatedCardWeb(
                  imagepath: "assets/images/firebase.png",
                  width: 200.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold("Back End Development ", 20.0),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Sans(
                "Do you want your back end be highly scalable and secure, lets have a conversation on how can i help with that",
                15.0),
          ],
        ),
      ),
    ));
  }
}
