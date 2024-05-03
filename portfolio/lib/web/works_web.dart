import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
        drawer: DrawerWeb(),
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 25.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/images/works.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                title: TabsWebList(),
              )
            ];
          },
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold("Works", 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCardWeb(
                        imagepath: "assets/images/comicstore.png",
                        height: 150.0,
                        width: 300.0,
                      ),
                      SizedBox(
                        width: widthDevice / 3,
                        child: Column(
                          children: [
                            SansBold("Comic Store", 30.0),
                            SizedBox(
                              height: 15.0,
                            ),
                            Sans(
                                "It is a project made by using wordpress. It a complete package of ecommerce site for payment through esewa and khalti",
                                15.0)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: widthDevice / 3,
                        child: Column(
                          children: [
                            SansBold("Academic Aid", 30.0),
                            SizedBox(
                              height: 15.0,
                            ),
                            Sans(
                                "The project entitled as 'ACADEMIC AID' is an application for easy tutor selection by students. This project has been developed to carry out the processes easily and quickly as well provide functionality which is not possible with the manual system. In this project, we are trying to provide teacher an efficient system where s/he can set own profile with personal details and let student themselves decide the tutor through functional chat system. It will cover all the functionality required for the tutor and student management.",
                                15.0)
                          ],
                        ),
                      ),
                      AnimatedCardWeb(
                        imagepath: "assets/images/academicaid.png",
                        height: 150.0,
                        width: 300.0,
                        reverse: true,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
