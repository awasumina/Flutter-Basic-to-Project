import 'package:flutter/material.dart';
import 'package:shop_app/global_variables.dart';
import 'package:shop_app/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String>filters = const [
    'All',
    'Adidas',
    'Nike',
    'Bata'];
  late String selectedFilter;
  
  @override
  void initState() {
    super.initState();
    selectedFilter=  filters[0];
  }

  @override
  Widget build(BuildContext context) {
    final border=  OutlineInputBorder(
                  borderSide: BorderSide(               
                   color : Color.fromRGBO(225, 225, 225, 1),
                ),                
                borderRadius : BorderRadius.horizontal(
                  left:Radius.circular(50),
                )
                );
    return  Scaffold(
      body:SafeArea(    //it escapes the top and bottom area
        child: Column(
          children: [
            Row(
              children:[ 
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('Shoes\nCollection',
                    style:TextStyle(
                  fontSize:35, 
                  fontWeight:FontWeight.bold
                                ),
                                ),
                ),
              Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText:'Search',
                prefixIcon : const Icon(Icons.search,
                color : Colors.red),
                border : border,
                enabledBorder: border,
                focusedBorder: border,
              ),
              
              ),
              ),             
          ]
          ),




      
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: filters.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index){
                    final filter = filters[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedFilter=filter;
                          });
                        },

                        child: Chip(
                          backgroundColor:selectedFilter==filter? Theme.of(context).colorScheme.primary: const Color.fromRGBO(245, 247, 249, 1),
                          side: const BorderSide(
                            color: Color.fromRGBO(245, 247, 249, 1)),
                          label : Text(filter),
                          labelStyle:const TextStyle(
                            fontSize: 16,
                          ) ,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          shape : RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                            ),
                        ),
                      ),
                    );
                  } ,
                  ),
              ),




            Expanded(
              child: ListView.builder(
                itemCount : products.length,
                itemBuilder: (context,index){
                  final product = products[index];
                  return ProductCard(
                    title : product['title'] as String,
                    price : product['price'] as double,
                    image : product['imageUrl'] as String,
                    backgroundColor: index.isEven ? const Color.fromRGBO(216, 240, 253, 1) : const Color.fromRGBO(245, 247, 249, 1) ,
                    );
              
                },
                ),
            ),  
            ],
        ),
      ),
      );
    }
}
