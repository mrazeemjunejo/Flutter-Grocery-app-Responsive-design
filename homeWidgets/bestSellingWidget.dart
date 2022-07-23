import 'package:flutter/material.dart';
import 'package:grocery_app/Models/bestSellModel.dart';
import 'package:grocery_app/widgets/homeWidgets/bestSold.dart';

class bestSellings extends StatelessWidget {
  const bestSellings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          const Text("Best selling ",textScaleFactor: 1.2, style: TextStyle(fontWeight: FontWeight.bold),),
                          Image.asset("assets/images/Fire.png", height: screenHeight/35,),
                          const Spacer(),
                          TextButton(onPressed: (){}, child: Text("See all", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),),
                        ],
                      ),
                    ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildBestSellCard(
                      Image.asset("assets/icons/red.png", height: screenHeight/8,width: screenHeight/6,),
                      Text("Bell Pepper Red",textScaleFactor: 1.0, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("1kg, 4\$", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                      IconButton(onPressed: (){}, icon: Image.asset("assets/icons/plus.png",height: screenHeight/20,)),
                    ),

                    buildBestSellCard(
                      Image.asset("assets/images/meat.png", height: screenHeight/8,width: screenHeight/6,),
                      Text("Lamb Meat",textScaleFactor: 1.0, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("1kg, 45\$", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                      IconButton(onPressed: (){}, icon: Image.asset("assets/icons/plus.png",height: screenHeight/20,)),
                    ),
                  ]
                  ),
                   ],
    );
  }

  buildBestSellCard(Image image, Text name, Text price, IconButton btn){
    return Container(
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.all(8),
                      //height: screenHeight/4,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: image,
                          ),
                           name,

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             price,
                            Padding(
                              padding: const EdgeInsets.only(left:25.0),
                              child: btn,
                            ),
                          ],)
                        ],
                      ),
                    );
  }
}