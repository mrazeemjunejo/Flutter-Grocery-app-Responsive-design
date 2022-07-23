import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/homeWidgets/appHeader.dart';
import 'package:grocery_app/widgets/homeWidgets/bestSellingWidget.dart';
import 'package:grocery_app/widgets/homeWidgets/homeSearchbar.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],

body: SafeArea(
  child:   SingleChildScrollView(
    child: Container(
            child: Column(  
              children: [
                const appHeader(),
                const homeSearchBar(),  
                  
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    height: screenHeight/4-20,
                   decoration: const BoxDecoration(
                    color: Colors.transparent,
                   ),
                   child: Image.asset("assets/images/slider1.png"),
                  ),
  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text("Categories ",textScaleFactor: 1.2, style: TextStyle(fontWeight: FontWeight.bold),),
                        Image.asset("assets/images/emogi1.png", height: screenHeight/35,),
                        const Spacer(),
                        TextButton(onPressed: (){}, 
                        child: Text("See all", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),),
                      ],
                    ),
                  ),
  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    buildCategory(const AssetImage("assets/images/cat1.png"),
                    const Text("Fruits", style: TextStyle(fontWeight: FontWeight.bold))),
                    buildCategory(const AssetImage("assets/images/cat2.png"),
                    const Text("vegetables ", style: TextStyle(fontWeight: FontWeight.bold))),
                    buildCategory(const AssetImage("assets/images/cat3.png"),
                    const Text("Diary", style: TextStyle(fontWeight: FontWeight.bold),)),
                    buildCategory(const AssetImage("assets/images/cat4.png"),
                    const Text("Meat", style: TextStyle(fontWeight: FontWeight.bold))),
                  ],),
  
                 bestSellings(),
                  
              ],
    
            ),
    
    ),
  ),
),      
    );
  }

  buildCategory(ImageProvider img, Text cat){
   return Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: img,
                      ),
                      cat,
                    ],
                  ),
                );
  }
}