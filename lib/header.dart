import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(50),
      child: TextField(
        controller: nameController,
        decoration: InputDecoration(
          prefixIcon: Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          border: InputBorder.none,
          hintText: 'Search Store',
        ),
        onChanged: (text) {
          setState(() {
            fullName = text;
            //you can access nameController in its scope to get
            // the value of text entered as shown below
            //fullName = nameController.text;
          });
        },
      ),
    );
  }
}
