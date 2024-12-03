import 'package:flutter/material.dart';
import 'package:ukl_cinepolis/bottom_nav.dart';
import 'package:ukl_cinepolis/field_search.dart';

class CinemaPage extends StatefulWidget {
  const CinemaPage({super.key});

  @override
  State<CinemaPage> createState() => _CinemaPageState();
}

class _CinemaPageState extends State<CinemaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 230, 15, 20),
            child: Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CardCinema(),
                    SizedBox(
                      height: 20,
                    ),
                    CardCinema(),
                  ],
                ),
              ),
            ),
          ),
          StackUpper2(),
        ],
      ),
      bottomNavigationBar: BottomNav(3),
    );
  }
}

class StackUpper2 extends StatefulWidget {
  const StackUpper2({super.key});

  @override
  State<StackUpper2> createState() => _StackUpperState();
}

class _StackUpperState extends State<StackUpper2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 30, 15, 20),
            child: Container(
              width: 150,
              height: 39,
              padding: EdgeInsets.fromLTRB(15, 1, 15, 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1, style: BorderStyle.solid, color: Colors.grey),
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
            ),
          ),
          FieldSearch(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 250,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.blue.withOpacity(0.4), width: 2))),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, shadowColor: Color(0)),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/movie");
                  },
                  child: Text(
                    'Movie',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.withOpacity(0.4)),
                  ),
                ),
              ),
              Container(
                width: 250,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.blue, width: 2))),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, shadowColor: Color(0)),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/cinema");
                  },
                  child: Text(
                    'Cinema',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CardCinema extends StatelessWidget {
  const CardCinema({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Colors.grey.shade800,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Malang Town Square',
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.pin_drop,
                  size: 22,
                  color: Colors.grey.shade600,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '8.03 Km away',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade400),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.confirmation_num,
                  size: 22,
                  color: Colors.grey.shade600,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'REGULER*LUXE',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade400),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
