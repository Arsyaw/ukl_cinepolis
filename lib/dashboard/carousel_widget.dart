import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carouselwidget extends StatefulWidget {
  const Carouselwidget({super.key});

  @override
  State<Carouselwidget> createState() => _CarouselwidgetState();
}

class _CarouselwidgetState extends State<Carouselwidget> {
  int _currentIndex = 0;

  final List<String> imgList = [
    'aadc.jpeg',
    '5cm.jpg',
    'sewudino.jpg',
    'warkop.jpg',
    'dreadout.jpg',
    'heart.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imgList.length,
      itemBuilder: (context, index, realIdx) {
        bool isCenter = index == _currentIndex;

        return Container(
          width: 125,
          height: 50,
          child: Stack(
            children: [
              // Gambar utama tanpa blur
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgList[index]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: isCenter
                      ? [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ]
                      : [],
                ),
              ),

              // Layer blur untuk elemen non-tengah
              if (!isCenter)
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        initialPage: 0,
        height: 175,
        enlargeCenterPage: true,
        viewportFraction: 0.4,
        enableInfiniteScroll: true,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
