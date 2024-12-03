import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 39,
      padding: EdgeInsets.fromLTRB(15, 1, 15, 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(width: 1, style: BorderStyle.solid, color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.pin_drop, size: 25, color: Colors.grey.shade400),
          Text(
            'Malang',
            style: TextStyle(
                fontSize: 13,
                color: Colors.grey.shade400,
                fontWeight: FontWeight.normal),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down,
                size: 18,
              ))
        ],
      ),
    );
  }
}
