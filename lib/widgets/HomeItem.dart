import 'package:flutter/material.dart';

Widget homeItem() {
  return Container(
    width: double.infinity, 
    height: 60.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: Colors.yellow.shade200
    ),
    child: Row(
      children: [
        const Image(
          image: AssetImage('assets/images/album-img.jpg'),
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text('Dance the Night Away'),
            Text('2019'),
          ],
        ), 
      ],
    )
  );
}