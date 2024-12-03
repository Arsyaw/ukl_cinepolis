import 'package:flutter/material.dart';

class Nowshowing extends StatelessWidget {
  const Nowshowing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Now Showing',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(225, 22, 22, 111)),
          ),
          Text('See All')
        ],
      ),
    );
  }
}
