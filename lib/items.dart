import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/asset.dart';

class Item extends StatelessWidget {
  final String image;
  final String quandity;
  final String name;
  final String price;

  Item({
    required this.image,
    required this.name,
    required this.price,
    required this.quandity,
  });

  Widget itemselection({
    required String image,
    required String quandity,
    required String name,
    required String price,
  }) {
    return Container(
      height: 230,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.grey),
            height: 100,
            width: 150,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 40,
            width: 150,
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 30,
            width: 150,
            child: Text(quandity),
          ),
          Container(
            child: Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      child: itemselection(
          image: image, quandity: quandity, name: name, price: price),
    );
  }
}
