import 'package:flutter/material.dart';
import 'package:ukl_cinepolis/bottom_nav.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(
            'My Booking',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text('There are no active bookings!'),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.punch_clock))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // First Container (Movie Card 1)
            Row(
              children: [
                Container(
                  width: 400,
                  height: 150,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 0.1,
                          blurRadius: 7,
                        )
                      ]),
                  child: Row(
                    children: [
                      // Movie Image
                      ClipRRect(
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            'agak_laen.jpg', // Replace with your actual image path
                            width: 120,
                            height: 180,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      // Movie Details
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Agak Laen',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text('R 13+',
                                      style: TextStyle(
                                          color: Colors.grey.withOpacity(0.9))),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    'Comedy', // Replace with actual genre
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              // Star Rating
                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star,
                                    color:
                                        index < 4 ? Colors.orange : Colors.grey,
                                    size: 20,
                                  );
                                }),
                              ),
                              SizedBox(height: 5),
                              // Movie Rating Text
                              Text(
                                '9.5', // Replace with actual rating
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Second Container (Movie Card 2)
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: 400,
                  height: 150,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 0.1,
                          blurRadius: 7,
                        )
                      ]),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            'traintobusan.jpg', // Replace with your actual image path
                            width: 120,
                            height: 180,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      // Movie Details
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Train To Busan',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    'D 18+',
                                    style: TextStyle(
                                        color: Colors.red.withOpacity(0.9)),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    'Horror, Action', // Replace with actual genre
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              // Star Rating
                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star,
                                    color:
                                        index < 4 ? Colors.orange : Colors.grey,
                                    size: 20,
                                  );
                                }),
                              ),
                              SizedBox(height: 5),
                              // Movie Rating Text
                              Text(
                                '9.5', // Replace with actual rating
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(1),
    );
  }
}
