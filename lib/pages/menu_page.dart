import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant/components/button.dart';
import 'package:sushi_restaurant/models/food.dart';

import 'package:sushi_restaurant/themes/colors.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // food menu
  List foodMenu = [
    Food(
        name: "Nigiri",
        price: "21.0",
        imagePath: 'assets/img/nigiri.png',
        rating: '8.9'),
    Food(
        name: "Tuna",
        price: "19.0",
        imagePath: 'assets/img/hossomaki.png',
        rating: '7.9'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Tokyo',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // promo message
                    Text(
                      "Get 50% promo",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // redeem button
                    MyButton(text: "Redeem", onTap: () {}),
                  ],
                ),

                // image
                Image.asset(
                  'assets/img/many-sushi.png',
                  height: 100,
                )
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          // food menu
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Food Menu',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTile(
                  food: foodMenu[index],
                ),
          ))
        ],
      ),
    );
  }
}
