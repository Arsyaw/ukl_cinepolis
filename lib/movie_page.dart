import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ukl_cinepolis/bottom_nav.dart';
import 'package:ukl_cinepolis/field_search.dart';
import 'package:ukl_cinepolis/gridview_movie.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(15, 220, 15, 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                        height: 600,
                        width: MediaQuery.of(context).size.width,
                        child: GridviewMovie()),
                  ],
                ),
              )),
          StackUpper(),
        ],
      ),
      bottomNavigationBar: BottomNav(2),
    );
  }
}

class StackUpper extends StatefulWidget {
  const StackUpper({super.key});

  @override
  State<StackUpper> createState() => _StackUpperState();
}

class _StackUpperState extends State<StackUpper> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  border:
                      Border(bottom: BorderSide(color: Colors.blue, width: 2))),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, shadowColor: Color(0)),
                onPressed: () {},
                child: Text(
                  'Movie',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ),
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
                  Navigator.pushReplacementNamed(context, "/cinema");
                },
                child: Text(
                  'Cinema',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.withOpacity(0.4)),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class CardMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/film/spiderman.jpg'),
                    fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }
}
