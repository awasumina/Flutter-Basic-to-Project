import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
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
                child: Image.asset(
                  'assets/images/1circle.png',
                  filterQuality: FilterQuality.high,
                ),
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 35.0,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/contact_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 25.0,
          ),
          child: Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              SansBold("Contact Me", 35.0),
              TextForm(
                  text: "First Name",
                  Containerwidth: widthDevice / 1.4,
                  hintText: "Please type first name"),
              TextForm(
                  text: "Last Name",
                  Containerwidth: widthDevice / 1.4,
                  hintText: "Please type last name"),
              TextForm(
                  text: "Email Address",
                  Containerwidth: widthDevice / 1.4,
                  hintText: "Please type email address"),
              TextForm(
                  text: "Phone Number",
                  Containerwidth: widthDevice / 1.4,
                  hintText: "Please type phone number"),
              TextForm(
                text: "Message",
                Containerwidth: widthDevice / 1.4,
                hintText: "Please type message",
                maxLine: 10,
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: widthDevice / 2.2,
                color: Colors.tealAccent,
                child: SansBold("Submit", 20.0),
              )
            ],
          ),
        ), //This sets the body of the NestedScrollView as a SingleChildScrollView. A SingleChildScrollView allows its child to be scrolled if it exceeds the available space.
      ),
    );
  }
}
