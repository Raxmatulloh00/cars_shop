import 'dart:math';

import 'package:flutter/cupertino.dart';

class Images {
  List<String> image = [
    "assets/images/bmw_i8.png",
    "assets/images/bmw_sanata.png",
    "assets/images/bmw_sport.png",
    "assets/images/bmw_classic.png",
    "assets/images/bmw_busnis.png",
  ];
}

class Nomi {
  List<String> names = [
    "BMW I8 2022",
    "BMW SANATA 2021",
    "BMW SPORT 2020",
    "BMW CLASSIC 2019",
    "BMW BUSNIS 2019",
  ];
}

class Narxi {
  List<String> price = [
    "\$78.245",
    "\$62.556",
    "\$56.246",
    "\$53.148",
    "\$50.546",
  ];
}

class Randomraqam {
  List speed = List.generate(1, (index) => Random().nextInt(300));
  List seats = List.generate(1, (index) => Random().nextInt(4));
}
