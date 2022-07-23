import 'package:flutter/material.dart';
import 'package:grocery_app/Models/bestSellModel.dart';

class bestSold extends StatelessWidget {
    final SellsItems sellsItems;

  const bestSold({Key? key, required this.sellsItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Row(
                  children: [
                    Container(
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
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/icons/red.png", height: screenHeight/8,),
                          ),
                           Text(sellsItems.name.toString(),textScaleFactor: 1.0, style: TextStyle(fontWeight: FontWeight.bold),),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Text(sellsItems.price.toString(), style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: IconButton(onPressed: (){}, icon: Image.asset("assets/icons/plus.png",height: screenHeight/20,)),
                            ),
                          ],)
                        ],
                      ),
                    )
                  ]
                  );
  }
}