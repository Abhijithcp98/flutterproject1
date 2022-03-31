import 'package:flutter/material.dart';
import 'package:flutter_application_1/asset.dart';

class Slide extends StatelessWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 50,
        left: 50,
        bottom: 10,
      ),
      height: 130,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Image.asset(
        slide,
        fit: BoxFit.cover,
      ),
    );
  }
}
