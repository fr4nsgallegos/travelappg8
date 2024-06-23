import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelappg8/pages/detail_page.dart';
import 'package:travelappg8/pages/home_page.dart';
import 'package:travelappg8/pages/tab_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      home: DetailPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
