import 'package:flutter/material.dart';

class Scenes{
final String img;
final String name;
final Color col;
  Scenes(this.img, this.name,this.col);
}
List scenes=[
  Scenes("Assets/surface2.svg","Birthday",Colors.redAccent.withOpacity(0.6)),
    Scenes("Assets/surface2.svg","Party",Colors.purple.withOpacity(0.6)),
      Scenes("Assets/surface2.svg","Relax",Colors.lightBlue.withOpacity(0.6)),
        Scenes("Assets/surface2.svg","Fun",Colors.green.withOpacity(0.6))
];