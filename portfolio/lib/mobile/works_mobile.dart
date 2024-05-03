import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
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
                        "assets/images/works.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ];
              },
              body: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      SansBold("Work", 35.0),
                      SizedBox(
                        height: 20.0,
                      ),
                      AnimatedCardWeb(
                        imagepath: "assets/images/comicstore.png",
                        fit: BoxFit.contain,
                        height: 150.0,
                        width: 300.0,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      SansBold("Comic Store", 20.0),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                        "It is a project made by using wordpress. It a complete package of ecommerce site for payment through esewa and khalti",
                        15.0),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40.0,
                      ),
                      AnimatedCardWeb(
                        imagepath: "assets/images/academicaid.png",
                        fit: BoxFit.contain,
                        height: 150.0,
                        width: 300.0,
                        reverse: true,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      SansBold("Academic Aid", 20.0),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                        "The project entitled as 'ACADEMIC AID' is an application for easy tutor selection by students. This project has been developed to carry out the processes easily and quickly as well provide functionality which is not possible with the manual system. In this project, we are trying to provide teacher an efficient system where s/he can set own profile with personal details and let student themselves decide the tutor through functional chat system. It will cover all the functionality required for the tutor and student management.",
                        15.0),
                  ),
                ],
              ),
            )));
  }
}
