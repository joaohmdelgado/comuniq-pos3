import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      width: 100.0,
      height: 100.0,
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(27, 45, 79, 1)),
      child: Icon(Icons.home, color: Colors.white, size: 40.0,),
    );
  }
}