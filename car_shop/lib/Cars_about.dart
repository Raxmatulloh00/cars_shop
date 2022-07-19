import 'package:cars_shop/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarsAbout extends StatefulWidget {
  CarsAbout(this.name, this.image, this.price, {Key? key}) : super(key: key);
  String name;
  String image;
  String price;
  @override
  State<CarsAbout> createState() => _CarsAboutState();
}

class _CarsAboutState extends State<CarsAbout> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  like = !like;
                });
              },
              icon: Icon(
                Icons.favorite,
                size: 30,
                color: like ? Colors.red : Colors.white,
              ),
            ),
          ],
        ),
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
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Image.asset(widget.image),
                  const SizedBox(height: 30),
                  const Text(
                    "Overview",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "The BMW M4 is a high-performance version of\n"
                    "the BMW 4 Series coupes and convertibles\n"
                    "developed by BMW's motorsport division,\n"
                    "BMW M",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/thunder-icon-10.jpg",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            Randomraqam().speed.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Max Speed",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/Icon_Color_14-14-512.webp",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            Randomraqam().seats.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Seats",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/transparent-applet-icon-chip-icon-cpu-icon-5d71b36bd3bcd3.4989022515677325878673.jpg",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "3.0L 1-6",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Engine Power",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 72),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Buy Now for ${widget.price}",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(500, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/* The BMW M4 is a high-performance version of 
   the BMW 4 Series coupes and convertibles 
   developed by BMW's motorsport division,
   BMW M
*/