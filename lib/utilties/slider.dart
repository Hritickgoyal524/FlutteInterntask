import 'package:flutter/material.dart';

class slide {
  final String img;
  final String name;
  final Color color;
  final Color textcolor;

  slide({this.img, this.name, this.color, this.textcolor});
}

List slider = [
  slide(
      img: "Assets/surface1.svg",
      name: "Main Lights",
      color: Colors.white,
      textcolor: Colors.blue[900]),
  slide(
      img: "Assets/surface2.svg",
      name: "Desk Lights",
      color: Colors.blue[900],
      textcolor: Colors.white),
  slide(
      img: "Assets/bed1.svg",
      name: "Bed Lights",
      color: Colors.white,
      textcolor: Colors.blue[900])
];
