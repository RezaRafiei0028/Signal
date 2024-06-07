import 'package:flutter/material.dart';

Widget GetPostWidgets(
    {required String imageName,
    required String signalName,
    required String sell,
    required String buy}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image(
          image: AssetImage('assets/images/${imageName}.png'),
        ),
      ),
      SizedBox(height: 10.0),
      Text(
        '${signalName}',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.price_change_outlined),
          Text(
            '${sell}',
            style: TextStyle(color: Colors.red[700]),
          ),
          SizedBox(
            width: 20.0,
          ),
          Icon(
            Icons.shopping_cart_outlined,
          ),
          Text(
            '${buy}',
            style: TextStyle(
              color: Colors.green[700],
            ),
          ),
        ],
      ),
      Container(
        width: 150.0,
        child: Divider(
          height: 20.0,
          thickness: 2.0,
          color: Colors.black,
        ),
      ),
    ],
  );
}
