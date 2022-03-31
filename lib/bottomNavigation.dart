import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.shop_2_outlined), label: 'Shope'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_basket), label: 'Cart'),
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_outlined), label: 'account')
        ],
      ),
    );
  }
}
