import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 24, 119, 5)),
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

  var wtController = TextEditingController(); 
  var ftController = TextEditingController(); 
  var inController = TextEditingController(); 

  var result= "";

  var bgcolor=const Color.fromARGB(255, 243, 240, 240);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI', style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w700,
                ),),
            
                SizedBox(
                  height: 21,
                ),
            
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text('Enter your Weight in kg'),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
            
                  keyboardType: TextInputType.number,
                ),
            
                SizedBox(
                  height: 11,
                ),
            
                  TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text('Enter your Height in feet'),
                    prefixIcon: Icon(Icons.height),
                  ),
            
                  keyboardType: TextInputType.number,
                ),
            
            
                SizedBox(
                  height: 11,
                ),
            
            
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text('Enter your Height in inch'),
                    prefixIcon: Icon(Icons.height)
                  ),
        
                  keyboardType: TextInputType.number,
                ),
                
                SizedBox(
                  height: 17,
                ),
            
        
                ElevatedButton(
                  onPressed: () {
                    var wt=wtController.text.toString();
                    var ft = ftController.text.toString();
                    var inc = inController.text.toString();
            
        
                    if(wt!="" && ft!=""){
                      //BMI calculation   
                       var iwt=int.parse(wt);
                       var ift=int.parse(ft);
                       var iinc=int.parse(inc);   
        
                       var totalinch = (ift*12)+iinc; 
                       var totalcm=totalinch*2.54;
                       var totalmeter = totalcm/100;
        
                       var bmi=iwt/(totalmeter*totalmeter);
                       
                       var msg="";


                       if(bmi>25){
                        msg = "Your are over weight";
                        bgcolor=Colors.orange.shade200;

                       }
                       else if(bmi<18){
                        msg = "Your are under weight";
                        bgcolor=Colors.red.shade200;

                       }
                       else{
                        msg = "Your are Healthy and Fit";
                        bgcolor=Color.fromARGB(255, 167, 223, 199);

                       }
        
                       setState(() {
                        result="$msg \n Your BMI is :${bmi.toStringAsFixed(2)}";
                         
                       });
        
                    }
                    else{
                      setState(() {
                        result = "Please fill the required values";
                      });
        
                    }
                  },
                  child: Text('Calculate'),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 18),
                    ),
                  elevation: MaterialStateProperty.all<double>(5),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
            ),
          ),
        
                
                SizedBox(
                  height: 11,
                ),
        
                Text(result, style: TextStyle(
                  fontSize: 21,
                ),),
            
            
            
              ],
            ),
          ),
        ),
      )
    );
  }
}


