import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/components.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  //  void article() async {
  //   await FirebaseFirestore.instance
  //       .collection("article")
  //       .get()
  //       .then((querySnapshot) {
  //     //querySnapshot contains document
  //     querySnapshot.docs.forEach((element) {
  //       // print(element.data()['title']);
  //     });
  //   });
  // }
  //
  // void streamArticle() async {
  //   //this is done so that if anything added to firebase db , it gets updated
  //   var logger = Logger();
  //
  //   await for (var snapshot
  //       in FirebaseFirestore.instance.collection('article').snapshots()) {
  //     for (var title in snapshot.docs) {
  //       logger.d(title.data()['title']);
  //     }
  //   }
  // }

  // @override
  // void initState() {
  //   streamArticle();
  //   // article();
  //   super.initState();
  // }

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
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 35.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: AbelCustom("Welcome to my blog", 24.0, Colors.white,
                        FontWeight.bold),
                  ),
                  background: Image.asset(
                    "assets/images/blog.jpg",
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                ),
                expandedHeight: 200.0,
              )
            ];
          },
          body: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('article').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        DocumentSnapshot documentSnapshot =
                            snapshot.data!.docs[index];
                        return BlogPost(
                            title: documentSnapshot["title"],
                            body: documentSnapshot["body"]);
                      });
                } else
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              }),
        ),
      ),
    );
  }
}

class BlogPost extends StatefulWidget {
  final title;
  final body;

  const BlogPost({super.key, @required this.title, @required this.body});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, width: 1.0, color: Colors.black)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3.0)),
                  child: AbelCustom(widget.title.toString(), 35.0, Colors.white,
                      FontWeight.normal),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      expand =
                          !expand; //if expand is true it gets false value and vice versa
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down_circle_outlined),
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(
              widget.body.toString(),
              style: GoogleFonts.openSans(fontSize: 15.0),
              maxLines: expand == true ? null : 3,
              overflow:
                  expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
