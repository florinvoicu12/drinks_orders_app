import 'package:drinks_orders_app/screens/home_screen.dart';

class Menu {
  final String asset;
  final String title;
  final String subtitle;
  final String amount;

  Menu(
      {required this.asset,
      required this.title,
      required this.amount,
      required this.subtitle});
}

List<MenuItem> menu_items_list = [
  MenuItem(
      asset: "assets/chocolate.png",
      title: "Hot chocolate",
      subtitle:
          "Heated drink consisting of shaved or melted chocolate or cocoa powder, heated milk or water, and usually a sweetener.",
      amount: "\$25"),
  MenuItem(
      asset: "assets/macchiato2.png",
      title: "Cappucino",
      subtitle: "The best originak sjenwiwnxiubwucbhcd",
      amount: "\$20"),
  MenuItem(
      asset: "assets/macchiato1.png",
      title: "Macchiato",
      subtitle: "The best originak sjenwiwnxiubwucbhcd",
      amount: "\$23.5"),
  MenuItem(
      asset: "assets/espresso.png",
      title: "Espresso",
      subtitle: "The best originak sjenwiwnxiubwucbhcd",
      amount: "\$23.5"),
  MenuItem(
      asset: "assets/macchiato.png",
      title: "Mocha",
      subtitle: "The best originak sjenwiwnxiubwucbhcd",
      amount: "\$23.5")
];
