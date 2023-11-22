import 'package:drinks_orders_app/screens/home_screen.dart';
import 'package:drinks_orders_app/screens/human_body_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DrinksOrdersApp());
}

class DrinksOrdersApp extends StatelessWidget {
  const DrinksOrdersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HumanBody(),
    );
  }
}
