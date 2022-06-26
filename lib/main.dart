import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userinput_formvalidation_navigation_route_fonts/page.dart';
import 'package:userinput_formvalidation_navigation_route_fonts/valid.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(
      textTheme: GoogleFonts.aldrichTextTheme(
        Theme.of(context).textTheme.apply()
      )
    ),
      initialRoute: '/',
      routes: {
      '/first': (context) =>myApp2(),
        '/second': (context)=> pagescreen()
      },
      home: myApp2(),
    );
  }
}


