import 'package:flutter/material.dart';
import 'package:ukl_cinepolis/bottom_nav.dart';
import 'package:ukl_cinepolis/dashboard/dropdown.dart';
import 'package:ukl_cinepolis/dashboard/carousel_widget.dart';
import 'package:ukl_cinepolis/dashboard/nowshowing.dart';
import 'package:ukl_cinepolis/dashboard/promotion.dart';
import 'package:ukl_cinepolis/dashboard/rekomendasi.dart';
import 'package:ukl_cinepolis/dashboard/upcoming.dart';
import 'package:ukl_cinepolis/dashboard/upcoming_widget.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [Dropdown()],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Color.fromARGB(255, 29, 21, 114),
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 29, 21, 114),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 29, 21, 114),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Text('Mau nonton apa hari ini?'),
            ),
            SizedBox(
              height: 5,
            ),
            Rekomendasi(),
            Nowshowing(),
            SizedBox(
              height: 5,
            ),
            Carouselwidget(),
            Upcoming(),
            UpcomingWidget(),
            Promotion(),
            Rekomendasi()
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(0),
    );
  }
}
