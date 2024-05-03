import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TabsWeb extends StatefulWidget {
  final title;
  final route;

  const TabsWeb({Key? key, this.title, this.route}) : super(key: key);

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
          // print("entered");
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
          // print("exit");
        },
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 100),
          curve: Curves.elasticIn,
          style: isSelected
              ? GoogleFonts.openSans(
                  // shadows: [Shadow(color: Colors.black, offset: Offset(0, -8))],
                  fontSize: 29.0,
                  color: Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                  decorationColor: Colors.tealAccent,
                )
              : GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 23.0,
                ),
          child: Text(
            widget.title,
            style: GoogleFonts.roboto(color: Colors.black, fontSize: 23.0),
          ),
        ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;

  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;

  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final text;
  final Containerwidth;
  final hintText;
  final maxLine;

  const TextForm({
    Key? key,
    @required this.text,
    @required this.Containerwidth,
    @required this.hintText,
    this.maxLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text, 16.0),
        SizedBox(
          height: 5.0,
        ),
        SizedBox(
          width: Containerwidth,
          child: TextFormField(
            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(50),  //limit the length to 10
            //   FilteringTextInputFormatter.allow(RegExp(
            //       '[a-zA-Z]')) //allow uppercase and lowercase letters only
            // ],
            maxLines: maxLine == null ? null : maxLine,
            //if maxLine value is null it will take default value 1
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 2.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
            // validator: (text) {  //if input field is sumina then it shows error of match found
            //   if (RegExp("\\bsumina\\b", caseSensitive: false)
            //       .hasMatch(text.toString())) return "Match found";
            // },
            // autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  final imagepath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;

  const AnimatedCardWeb({
    Key? key,
    @required this.imagepath,
    this.text,
    this.fit,
    this.reverse,
    this.height,
    this.width,
    // required Color color,
  }) : super(key: key);

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration:
        const Duration(seconds: 4), //avoid consumption of unnecessary resources
  )..repeat(
      reverse:
          true); //animation to play only once we write ..repeat() and reverse:true to have smooth up and down movement

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.tealAccent),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagepath,
                height: widget.height == null
                    ? 200
                    : widget.height, //if height not give then make it 200
                width: widget.width == null ? 200 : widget.width,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(
                height: 10,
              ),
              widget.text == null ? SizedBox() : Sans(widget.text, 15.0)
            ],
          ),
        ),
      ),
    );
  }
}

//for mobile
class TabsMobile extends StatefulWidget {
  final text;
  final route;

  const TabsMobile({
    Key? key,
    @required this.text,
    @required this.route,
  }) : super(key: key);

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.black,
      height: 50.0,
      minWidth: 200.0,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
      ),
    );
  }
}

class AbelCustom extends StatelessWidget {
  final text;
  final size;
  final color;
  final fontWeight;

  const AbelCustom(
      @required this.text, @required this.size, this.color, this.fontWeight,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        color: color == null ? Colors.black : color,
        fontWeight: fontWeight == null ? FontWeight.normal : fontWeight,
      ),
    );
  }
}

class TabsWebList extends StatefulWidget {
  const TabsWebList({super.key});

  @override
  State<TabsWebList> createState() => _TabsWebListState();
}

class _TabsWebListState extends State<TabsWebList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 3,
        ),
        TabsWeb(
          title: "Home",
          route: '/',
        ),
        Spacer(),
        TabsWeb(
          title: "Works",
          route: '/works',
        ),
        Spacer(),
        TabsWeb(
          title: "Blog",
          route: '/works',
        ),
        Spacer(),
        TabsWeb(
          title: "About",
          route: '/about',
        ),
        Spacer(),
        TabsWeb(
          title: "Contact",
          route: '/contact',
        ),
        Spacer(),
      ],
    );
  }
}

class DrawerWeb extends StatelessWidget {
  const DrawerWeb({super.key});

  @override
  Widget build(BuildContext context) {
    urlLauncher(String imgPath, String url) {
      return IconButton(
        onPressed: () async {
          await launchUrl(url as Uri);
        },
        icon: SvgPicture.asset(
          imgPath,
          color: Colors.black,
          width: 35,
        ),
      );
    }

    return Drawer(
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
                // Image.asset(
                //   "assets/images/instagram.png",
                //   width: 35.0,
                //   filterQuality:
                //       FilterQuality.high, //to enhance the image quality
                // ),

                urlLauncher("assets/images/instagram.svg",
                    "https://www.instagram.com/awasumina"),
              ],
            )
          ],
        ));
  }
}
