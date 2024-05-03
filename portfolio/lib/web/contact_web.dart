import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 72.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/1circle.png"),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SansBold("Sumina Awa", 30.0),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () async {
                        await ("https://www.instagram.com/awasumina");
                      },
                      icon: SvgPicture.asset(
                        "assets/images/instagram.svg",
                        color: Colors.black,
                        width: 35.0,
                      )),
                  IconButton(
                      onPressed: () async {
                        await ("https://www.twitter.com/awasumina");
                      },
                      icon: SvgPicture.asset(
                        "assets/images/twitter.svg",
                        color: Colors.black,
                        width: 35.0,
                      )),
                  IconButton(
                    onPressed: () async {
                      await ("https://www.github.com/awasumina");
                    },
                    icon: SvgPicture.asset(
                      "assets/images/github.svg",
                      color: Colors.black,
                      width: 35.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
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
                    "assets/images/contact_image.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                title: TabsWebList(),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                SansBold("Contact Me", 40.0),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          text: "First Name",
                          Containerwidth: 350.0,
                          hintText: "Please enter first name",
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                          text: "Email Address",
                          Containerwidth: 350.0,
                          hintText: "Please enter email address",
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextForm(
                          text: "Last Name",
                          Containerwidth: 350.0,
                          hintText: "Please enter last name",
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                          text: "Phone Number",
                          Containerwidth: 350.0,
                          hintText: "Please enter phone number",
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextForm(
                  text: "Message",
                  Containerwidth: widthDevice / 1.5,
                  hintText: "Please type message",
                  maxLine: 10,
                ),
                SizedBox(
                  height: 20.0,
                ),
                MaterialButton(
                  onPressed: () {},
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: Sans("Submit", 20.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ));
  }
}
