import 'package:drinks_orders_app/screens/home_screen.dart';

class Drinks {
  final String asset;
  final String text;
  final String temperature;

  Drinks({required this.asset, required this.text, required this.temperature});
}

List<DrinksType> drinks_list = [
  const DrinksType(
    asset: "assets/mocha1.png",
    text: "Mocha",
    temperature: "Hot",
  ),
  const DrinksType(
    asset: "assets/macchiato2.png",
    text: "Cappucino",
    temperature: "Hot",
  ),
  const DrinksType(
    asset: "assets/latte.png",
    text: "Latte",
    temperature: "Hot",
  ),
  const DrinksType(
    asset: "assets/mocha1.png",
    text: "Mocha",
    temperature: "Hot",
  ),
  const DrinksType(
    asset: "assets/macchiato1.png",
    text: "Macchiato",
    temperature: "Hot",
  ),
  const DrinksType(
    asset: "assets/mocha1.png",
    text: "Mocha",
    temperature: "Hot",
  ),
];
