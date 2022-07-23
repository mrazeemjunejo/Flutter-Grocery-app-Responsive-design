import 'package:flutter/material.dart';

class appHeader extends StatelessWidget {
  const appHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(  
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("assets/images/profile.png"),
                      ),
                    ),
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning",textScaleFactor: 0.8, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[500]),),
                        const Text("Amelia Barlow",textScaleFactor: 1.2, style: const TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
const Spacer(),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Row( children: [
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Image.asset("assets/icons/loc.png",height: screenHeight/35,),
                        ),
                        const Text("My Flat", style: TextStyle(fontWeight: FontWeight.bold),),
                      ],),
                    )
                  ], ),
              );
  }
}