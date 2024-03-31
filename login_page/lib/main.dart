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
  var emailText = TextEditingController();
  var pwText = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color:Color.fromARGB(255, 60, 19, 6),
                spreadRadius: 0.1,
                blurRadius: 10,
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Login Form',
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 97, 77, 5),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                TextField(
                  
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                      border : OutlineInputBorder(
                      borderRadius : BorderRadius.circular(11),
                      borderSide : BorderSide(
                        // color : Colors.deepOrange
                      )
                    ),
            
                    focusedBorder : OutlineInputBorder(
                      borderRadius : BorderRadius.circular(11),
                      borderSide : BorderSide(
                        color : Colors.deepOrange
                      )
                    ),
                    prefixIcon: Icon(Icons.email,color:Colors.orangeAccent,)
            
                   
                    ),
                    
                  ),
              
            
              Container(
              height:11
              ),
            
            
                  TextField(
                    controller: pwText,
                    obscureText: true,
                    obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    border : OutlineInputBorder(
                      borderRadius : BorderRadius.circular(11),
                      borderSide : BorderSide(
                        color : Colors.deepOrange
                      ),
            
                    ),
            
                    focusedBorder : OutlineInputBorder(
                      borderRadius : BorderRadius.circular(11),
                      borderSide : BorderSide(
                        color : Colors.deepOrange,
                        width: 2,
                      )
                  ),
            
                    prefixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye,color:Colors.orangeAccent),
                    onPressed:(){
            
                    }
                    ),
              
                
                ),
              ),
            
            
              Container(
              height:11
              ),
              
            ElevatedButton(
              onPressed: (){
                String uemail = emailText.text.toString();
                String uPass = pwText.text;
            
                print('Email:$uemail, password:$uPass');
            
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 160, 104, 6),
                ),
             child: Text(
              'Login',
              style: TextStyle(
                color:Colors.white,
              )
            )
            )
              ],
            ),
          ),
        ),
      ),



      
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
