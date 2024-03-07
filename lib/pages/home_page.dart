// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_wallet_ui/components/my_card.dart';
import 'package:my_wallet_ui/components/my_icons.dart';
import 'package:my_wallet_ui/components/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        shape: StadiumBorder(
            side: BorderSide(width: 4, color: Colors.transparent)),
        child: Icon(
          Icons.monetization_on,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.pink,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards ',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[400]),
                      child: Icon(size: 30, Icons.add)),
                ],
              ),
            ),
            //Cards
            SizedBox(
              height: 200,
              child: PageView(
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5623.20,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 28,
                    color: Colors.deepPurple,
                  ),
                  MyCard(
                    balance: 2872.20,
                    cardNumber: 12345678,
                    expiryMonth: 3,
                    expiryYear: 26,
                    color: Colors.blue,
                  ),
                  MyCard(
                    balance: 200.20,
                    cardNumber: 12345678,
                    expiryMonth: 12,
                    expiryYear: 24,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
                effect: ExpandingDotsEffect(activeDotColor: Colors.grey),
                controller: _controller,
                count: 3),
            SizedBox(
              height: 25,
            ),
            //Buttons => Send , bills , Pay
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyIcons(
                    iconImagePath: 'images/transfer.png',
                    iconText: 'Send',
                  ),
                  MyIcons(
                    iconImagePath: 'images/pay.png',
                    iconText: 'Pay',
                  ),
                  MyIcons(
                    iconImagePath: 'images/bill.png',
                    iconText: 'bill.',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // statistics
            MyListTile(
              imagePath: 'images/analysis.png',
              title: 'Statistics',
              subtitle: 'Payment and Income',
            ),
            SizedBox(
              height: 20,
            ),
            MyListTile(
              imagePath: 'images/transfer.png',
              title: 'Transactions',
              subtitle: 'Transaction History',
            )
          ],
        ),
      )),
    );
  }
}
