import 'package:flutter/material.dart';
import 'package:furniture_app/Utilities/connstants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'Screens/products/products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor),
      ),
      home: const ProductScreen(),
    );
  }
}
