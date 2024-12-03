import 'package:flutter/material.dart';
import 'package:ukl_cinepolis/booking.dart';
import 'package:ukl_cinepolis/cinema_page.dart';
import 'package:ukl_cinepolis/dashboard/dashboard.dart';
import 'package:ukl_cinepolis/login.dart';
import 'package:ukl_cinepolis/movie_page.dart';
import 'package:ukl_cinepolis/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash screen',
      routes: {
        '/splash screen': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/dashboard': (context) => Dashboard(),
        '/booking': (context) => Booking(),
        '/movie': (context) => MoviePage(),
        '/cinema': (context) => CinemaPage(),
      },
      theme: ThemeData(
          primaryColor: Color.fromRGBO(15, 29, 84, 1),
          primaryColorLight: Color.fromRGBO(244, 247, 255, 1)),
    );
  }
}
