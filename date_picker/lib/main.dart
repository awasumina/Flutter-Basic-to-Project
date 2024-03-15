import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Date',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicker = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2024),
                );

                

                if (datePicker != null) {
                  print('Date selected: ${datePicker.day}-${datePicker.month}-${datePicker.year}');
                }
              },
              child: Text(
                'Show',
                style: TextStyle(
                  fontSize: 20, // Adjust the font size as needed
                ),
              ),
            ),

            Container(
              height: 100,
            ),


              Text(
              'Select Time',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

      
              
              ElevatedButton(onPressed: () async{
              TimeOfDay? pickedTime = await showTimePicker(
                context:context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial
              );


              if (pickedTime!=null){
                print('Time selected : ${pickedTime.hour}:${pickedTime.minute}');
              }
            },child: Text('Select Time'),
            )
          ],
        ),
      ),
    );
  }
}
