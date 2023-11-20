import 'dart:ui';

import 'package:drinks_orders_app/models/drinks_type_model.dart';
import 'package:drinks_orders_app/models/menu_items_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchTextController = TextEditingController();
    bool isSelected = false;
    final Drinks drinks;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 18),
              child: Text(
                "HOME",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withAlpha(200),
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withAlpha(30),
                      border: Border.all(color: Colors.black.withAlpha(50)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12))),
                  child: TextField(
                    enabled: true,
                    controller: searchTextController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.black,
                      border: InputBorder.none,
                      hintText: "Search",
                    ),
                  )),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Text("Recommend"),
                  onTap: () => isSelected = true,
                ),
                Text("Coffee"),
                Text("Green Tea"),
                Text("Fruit juice"),
                Text("Appetizers"),
              ],
            ),
            const SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      drinks_list.length,
                      (index) => DrinksType(
                            asset: drinks_list[index].asset,
                            text: drinks_list[index].text,
                            temperature: drinks_list[index].temperature,
                          ))),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Menu",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
            ),
            Column(
              children: List.generate(
                  menu_items_list.length,
                  (index) => MenuItem(
                      asset: menu_items_list[index].asset,
                      title: menu_items_list[index].title,
                      subtitle: menu_items_list[index].subtitle,
                      amount: menu_items_list[index].amount)),
            )
          ]),
        )),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.asset,
    required this.title,
    required this.subtitle,
    required this.amount,
  });
  final String asset;
  final String title;
  final String subtitle;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(3),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image.asset(
          asset,
          height: 100,
          width: 80,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Text(subtitle,
                    softWrap: true,
                    maxLines: 3,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
              ],
            ),
          ),
        ),
        Text(amount,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      ]),
    );
  }
}

class DrinksType extends StatelessWidget {
  const DrinksType(
      {super.key,
      required this.asset,
      required this.text,
      this.scale,
      required this.temperature});
  final String temperature;
  final String asset;
  final String text;
  final double? scale;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.7,
      decoration: BoxDecoration(
          color: Colors.green.withAlpha(30),
          borderRadius: BorderRadius.circular(12)),
      child: Column(children: [
        Text(temperature),
        Image.asset(
          asset,
          height: 120,
          width: 100,
          fit: BoxFit.cover,
        ),
        Text(text)
      ]),
    );
  }
}
