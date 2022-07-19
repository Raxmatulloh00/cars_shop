import 'dart:io';

import 'package:cars_shop/price%20qatorlari/1-qator.dart';
import 'package:cars_shop/price%20qatorlari/2-qator.dart';
import 'package:cars_shop/price%20qatorlari/3-qator.dart';
import 'package:cars_shop/price%20qatorlari/4-qator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarsPrise extends StatelessWidget {
  const CarsPrise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Colors.blue,
                    Colors.black,
                  ],
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Row_1(),
                  SizedBox(height: 35),
                  Row_2(),
                  SizedBox(height: 25),
                  Text(
                    "Choose a Car",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row_3(),
                  SizedBox(height: 25),
                  Text(
                    "Top Dealers",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row_4(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
