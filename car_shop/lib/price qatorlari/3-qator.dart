import 'package:cars_shop/Cars_about.dart';
import 'package:cars_shop/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Row_3 extends StatelessWidget {
  const Row_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i <= 4; i++)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarsAbout(
                      Nomi().names[i],
                      Images().image[i],
                      Narxi().price[i],
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                width: 250,
                height: 365,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue,
                      Colors.black38,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Images().image[i].toString(),
                      // width: 190,
                      fit: BoxFit.cover,
                      cacheWidth: 250,
                      cacheHeight: 280,
                      // height: 180,
                    ),
                    const SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          Nomi().names[i].toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(
                          "PRICE:\t ${Narxi().price[i].toString()}",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 197, 195, 195),
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
