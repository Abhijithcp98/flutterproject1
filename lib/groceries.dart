import 'package:flutter/material.dart';
import 'package:flutter_application_1/asset.dart';

class Grocery extends StatelessWidget {
  const Grocery({Key? key}) : super(key: key);

  Widget groceryItems({
    required Color color,
    required String image,
    required String text,
  }) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50, top: 10),
      height: 100,
      width: 230,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Stack(children: [
        Positioned(
          top: 20,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover),
                shape: BoxShape.circle),
            height: 60,
            width: 60,
          ),
        ),
        Positioned(
            left: 100,
            top: 35,
            child: Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ))
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        groceryItems(
            color: Color.fromARGB(255, 114, 248, 119),
            image: powder,
            text: "Powders"),
        groceryItems(color: Colors.lightBlue, image: rice, text: "Rice")
      ]),
    );
  }
}
