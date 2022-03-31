import 'package:flutter/material.dart';
import 'package:flutter_application_1/asset.dart';
import 'package:flutter_application_1/groceries.dart';
import 'package:flutter_application_1/header.dart';
import 'package:flutter_application_1/items.dart';
import 'package:flutter_application_1/slide.dart';
import 'package:flutter_application_1/titles.dart';

import 'titles.dart';

import 'bottomNavigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.shop_2_outlined,
                color: Colors.black,
              ),
              label: 'Shope'),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.explore,
                color: Colors.black,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin_outlined,
                color: Colors.black,
              ),
              label: 'account')
        ],
        selectedLabelStyle: TextStyle(color: Colors.black),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Bottom(),
          Header(),
          Slide(),
          Titles(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Item(
                    image: apple,
                    name: "Red Apple",
                    price: "Rs 79.9",
                    quandity: "1 kg.priceg"),
                Item(
                    image: banana,
                    name: "Organic bananas",
                    price: "Rs 49.9",
                    quandity: "7 pcs,Priceg"),
              ],
            ),
          ),
          Titles(titleText: "Best Selling"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Item(
                    image: strawberry,
                    name: "Strawberry",
                    price: "Rs 59.9",
                    quandity: "5 pcs"),
                Item(
                    image: mango,
                    name: "Mango",
                    price: "Rs 59.9",
                    quandity: "5 pcs")
              ],
            ),
          ),
          Titles(titleText: "Groceries"),
          Grocery(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Item(
                    image: chicken,
                    name: "Chicken",
                    price: "rs 59.9",
                    quandity: "5 pcs"),
                Item(
                    image: meet,
                    name: "Meet",
                    price: "rs 59.9",
                    quandity: "5 pcs")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
