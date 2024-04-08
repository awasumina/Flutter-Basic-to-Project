import 'dart:convert';    //coz of jsonDecode
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/hourly_forecast_item.dart';
import 'package:weather_app/additional_info_item.dart';
// import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;
import 'package:weather_app/secrets.dart';



class WeatherScreen extends StatefulWidget {

  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late Future<Map<String,dynamic>> weather;
    //  double temp =0;
  // @override
  // void initState(){
  //   super.initState();
  //   getCurrentWeather();
  // }
  Future<Map<String, dynamic>> getCurrentWeather() async{
    try{
    String cityName = 
    // 'London';
    'Banepā';
    final res = await http.get(
        Uri.parse(
         'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$openWeatherAPIKey',
         ),
      );

    final data = jsonDecode(res.body);
    if(data['cod']!='200'){
      throw 'An unexpected error ocured';
    }
    return data;
    // setState(() {
      // temp = data['list'][0]['main']['temp'];
    // });
    

  }catch(e){
    throw e.toString();
  }
  //(res.body);
  }

  @override
  void initState(){
    super.initState();
    weather = getCurrentWeather();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App',
        style: TextStyle(
          fontWeight : FontWeight.bold,
        ),
        ),
        centerTitle: true,
        actions: [

          IconButton(
            onPressed: (){
              setState(() {
                weather = getCurrentWeather();
              });
            }, 
            icon: const Icon(Icons.refresh),
            ),
          // GestureDetector(          //  InkWell()      //widget to get the splash type when clicked refresh
          //   onTap: (){
          //     print('refresh');
          //   },     //for icon to perform refresh as if now
          //   child: const Icon(Icons.refresh),
          //   ),
        ],
      ),
      body:
      // temp==0 ? const CircularProgressIndicator() :
      FutureBuilder(
        future: weather,
        builder: (context,snapshot) {
          //print(snapshot);
          //print(snapshot.runtimeType);
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child:  CircularProgressIndicator.adaptive());    //adatptive it chages accourding to the operating system so differes for ios or pixel type
          }

          if(snapshot.hasError){
            return  Center(
              child: Text(snapshot.error.toString())
              );
          }

          final data = snapshot.data!;
          final currentWeatherDate =data['list'][0]; 
          final currentTemp = currentWeatherDate ['main']['temp'];
          final currentSky =currentWeatherDate['weather'][0]['main'];
          final currentPressure = currentWeatherDate['main']['pressure'];
          final currentHumidity = currentWeatherDate['main']['humidity'];
          final currentWindSpeed = currentWeatherDate['main']['speed'];
          

          return Padding(
          padding:const  EdgeInsets.all(16.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //main card
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 10,    //shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    
                  ),
                  child: ClipRRect(  
                    borderRadius: BorderRadius.circular(16.0),  
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                      child: Padding(
                        padding:const  EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text('$currentTemp K',
                            style:const  TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              ),
                            ),
                                   const  SizedBox(height: 16),
                             Icon(
                              currentSky =='Clouds' ||currentSky =='Rain'?  Icons.cloud: Icons.sunny,
                              size :64,
                            ),
                          const SizedBox(height: 16),
                           Text(
                            currentSky,
                          style: const TextStyle(
                            fontSize: 20,
                          ),)
                          ],
                        ),
                      ),
                    ),
                  )
                ),
              ),
              // Placeholder(
              //   fallbackHeight: 250,
              //   ),
        
        
        
                 const SizedBox(height: 20),
        
        
        
        
        
                 //weather forecast cards
                 //Align(alignment: Alignment.centerLeft,  //can be used to align a single property but since crossAxisAlignment is used so it does for all
                 const Text('Hourly Forecast', style:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                 ),
                             ),
                const SizedBox(height: 8),
                
                //we here use ListView.Builder rather than SingleChildScrollView so that the widget gets loaded when we start to scroll to enhave the performance i.e lazy loading
                // SingleChildScrollView(      //to scroll but has defualt horizontal scroll
                // scrollDirection: Axis.horizontal,
                //   child: Row
                //   (children: [  
                //     for(int i =0;i<5;i++)  
                //      HourlyForecastItem(
                //       time:data['list'][i+1]['dt'].toString(),
                //       icon : data['list'][i+1]['weather'][0]['main']=='Clouds'  || data['list'][i+1]['weather'][0]['main']=='Rain' ? Icons.cloud : Icons.sunny ,
                      
                //       temperature :data['list'][i+1]['main']['temp'].toString(),  
                //      ),
                    
             
                //  ],
                //   ),
                // ),

              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    final hourlyForecast = data['list'][index + 1];
                    final hourlySky = data['list'][index+1]['weather'][0]['main'];
                    final hourlyTemp = data['list'][index+1]['main']['temp'].toString();
                    final time = DateTime.parse(hourlyForecast['dt_txt']);
                    return HourlyForecastItem(
                    //  time: DateFormat.Hm().format(time),   //hm - hour minute
                      time: DateFormat.j().format(time),   
                      temperature:hourlyTemp , 
                      icon :hourlySky =='Clouds'  || hourlySky=='Rain' ? Icons.cloud : Icons.sunny ,
                
                      );
                   
                }
                ),
              ),
        
        
        
              
                const SizedBox(height: 16),
        
        
        
        
        
                 //additional information
              const Text(
                'Additional Information',
                style:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),  
                const SizedBox(height: 8),
        
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AdditionlInfoItem(
                      icon: Icons.water_drop,
                      label : 'Humidity',
                      value : currentHumidity.toString()
                      ),
        
                      AdditionlInfoItem(
                      icon: Icons.air,
                      label : 'Wind Speed',
                      value : currentWindSpeed.toString()
                      ),
        
                      AdditionlInfoItem(
                      icon: Icons.beach_access,
                      label : 'Pressure',
                      value : currentPressure.toString()),
                  ],
                )
              
          ],
          
          ),
        );
        },
      )
    );
  }
}





