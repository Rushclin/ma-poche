// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ma_poche/utils/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// Page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          // AppBar

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      'MA',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Text(
                      ' POCHE',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                // le bouton Plus

                Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: const Icon(Icons.add))
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          // Card

          // MyCard()
          Container(
            height: 200,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(
                  balence: 25000.1,
                  cardNumber: 1234026383,
                  color: Colors.green[700],
                  createdDate: 12,
                  createdMonth: 01,
                  createdYear: 2024,
                  type: "Reste",
                ),
                MyCard(
                  balence: 25000.1,
                  cardNumber: 1234026383,
                  color: Colors.deepPurple[300],
                  createdDate: 12,
                  createdMonth: 01,
                  createdYear: 2024,
                  type: "Dépot",
                ),
                MyCard(
                  balence: 5000.1,
                  cardNumber: 1234026383,
                  color: Colors.red[800],
                  createdDate: 12,
                  createdMonth: 01,
                  createdYear: 2024,
                  type: "Dépense",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade700,
            ),
          ),

          // Les 3boutons

          // Navigation
        ]),
      ),
    );
  }
}
