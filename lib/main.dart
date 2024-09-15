import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Main function that initializes the app
void main() {
  runApp(const MyApp());
}

// Main Material app (for Android or other platforms)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Sets the default page for Material design (Android)
      home: CurrencyConverterMaterialPage(),
    );
  }
}


// Main Cupertino app (for iOS)
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      // Sets the default page for Cupertino design (iOS)
      home: CurrencyConverterCupertinoPage(),
    );
  }
}