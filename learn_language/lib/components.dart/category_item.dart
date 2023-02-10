import 'package:flutter/material.dart';

class category extends StatelessWidget {
  category({this.text, this.color,this.onpress});
  String? text;
  Color? color;
  Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onpress,  
    child: Container(
      padding: const EdgeInsets.only(left: 50),
      alignment: Alignment.centerLeft,
      height: 65,
      width: double.infinity, //Note good for screen filling
      color: color,
      child: Text(
        text!,
        style: const TextStyle(color: Colors.white),
      ),
    ));
  }
}
