import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  final String titleText;

  Titles({@required this.titleText = "Exclussive Offer"});

  Widget titleSection({
    required String titleText,
  }) {
    return Text(
      titleText,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 50, left: 50),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        titleSection(titleText: titleText),
        TextButton(
            onPressed: () {},
            child: Text(
              "See all",
              style: TextStyle(color: Colors.green),
            ))
      ]),
    );
  }
}
