import 'package:flutter/material.dart';
import 'package:grocery_app/Constants.dart';

class homeSearchBar extends StatelessWidget {
  const homeSearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
                  margin: const EdgeInsets.all(kDefaultPadding),
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding+10,
                   // vertical: kDefaultPadding /4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                    style: const TextStyle(color: Colors.grey, ),
                    decoration: InputDecoration(
                      icon: Image.asset("assets/icons/search.png",height: screenHeight/30,),
                      hintText: "Search Category",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),
                    ),
                  ),
                );
  }
}