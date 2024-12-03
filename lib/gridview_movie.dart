import 'package:flutter/material.dart';

class GridviewMovie extends StatefulWidget {
  const GridviewMovie({super.key});

  @override
  State<GridviewMovie> createState() => _GridviewMovieState();
}

class _GridviewMovieState extends State<GridviewMovie> {
  final List<Map<String, String>> movies = [
    {'title': 'Sewu Dino (13+)', 'image': 'sewudino.jpg'},
    {'title': '5cm (17+)', 'image': '5cm.jpg'},
    {'title': 'Warkop DKI Reborn (SU)', 'image': 'warkop.jpg'},
    {'title': 'Dread Out  (13+)', 'image': 'dreadout.jpg'},
    // Add more movies here
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Adjust the number of columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          childAspectRatio: 3 / 7),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          shadowColor: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 180,
                height: 270,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          movies[index]['image']!,
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  movies[index]['title']!,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.grey.shade800),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
