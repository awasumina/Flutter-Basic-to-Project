import 'package:flutter/material.dart';
import 'package:splash_screen/main.dart';

class Introscreen extends StatelessWidget {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IntroPage'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 11),
              TextField(
                controller: nameController,
              ),
              SizedBox(height: 11),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(namefromIntroScreen: nameController.text),
                    ),
                  );
                },
                child: Text('Next Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
