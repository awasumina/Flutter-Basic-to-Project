import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

class BoxContainer extends StatelessWidget {
  final String text;

  const BoxContainer(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white38,
        border: Border.all(
          color: Colors.white12,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0), // Adjusted border radius
      ),
      padding: EdgeInsets.only(left: 3.0, right: 3.0), // Adjusted padding
      child: Text(
        text,
        style: GoogleFonts.openSans(
            fontSize: 9.0, color: Colors.white), // Adjusted font size
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  // final text;
  final Containerwidth;
  final hintText;

  const TextForm({
    Key? key,
    // @required this.text,
    @required this.Containerwidth,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Sans(text, 16.0),
        SizedBox(
          height: 5.0,
        ),
        SizedBox(
          width: Containerwidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Stack(
              //   children: [
              //     ClipOval(
              //       child: Image.asset(
              //         "assets/images/user_icon.png",
              //         fit: BoxFit.cover,
              //         width: 30,
              //         height: 30,
              //       ),
              //     ),
              //     Positioned(
              //       top: 0,
              //       right: 0,
              //       child: Container(
              //         width: 10,
              //         height: 10,
              //         decoration: BoxDecoration(
              //           color: Colors.lightBlueAccent,
              //           shape: BoxShape.circle,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              TextFormField(
                // inputFormatters: [
                //   LengthLimitingTextInputFormatter(50),  //limit the length to 10
                //   FilteringTextInputFormatter.allow(RegExp(
                //       '[a-zA-Z]')) //allow uppercase and lowercase letters only
                // ],
                // maxLines: maxLine == null ? null : maxLine,
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
                    prefixIcon: Icon(Icons.mic)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
