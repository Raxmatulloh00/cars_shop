import 'package:flutter/material.dart';

class Row_2 extends StatelessWidget {
  const Row_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Search your brand",
            style: TextStyle(fontSize: 18),
          ),
          Icon(
            Icons.search_rounded,
            color: Colors.white,
            size: 24,
          ),
        ],
      ),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minimumSize: Size(500, 50),
        backgroundColor: Colors.black54,
        primary: Colors.grey,
      ),
    );
  }
}
