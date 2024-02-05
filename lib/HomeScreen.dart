import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ieee/models.dart';

import 'button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  MainRow mainRow = MainRow();
  final int _selectedIconBar=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 66, 114, 1),
        title: const SizedBox(
          height: 39.17,
          width: 98,
          child: Image(
            image: AssetImage('images/Logo.png'),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 19),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: mainRow.titleItem(title: 'News'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  mainRow.rowItems(
                      image: 'images/pic1.jpeg',
                      text: 'Sherlock is a British mystery crime series'),
                  const SizedBox(
                    width: 19,
                  ),
                  mainRow.rowItems(
                      image: 'images/pic1.jpeg',
                      text: 'Sherlock is a British mystery crime series'),
                  const SizedBox(
                    width: 19,
                  ),
                  mainRow.rowItems(
                      image: 'images/pic1.jpeg',
                      text: 'Sherlock is a British mystery crime series'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: mainRow.titleItem(title: 'Events'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  mainRow.rowEvents(title: 'GHOSTECH', subtitle: 'Our exciting 5-day of Ghostech serves a dynamic blend of technical workshops', months: 'Feb', day: '30'),
                  const SizedBox(
                    width: 19,
                  ),
                  mainRow.rowEvents(title: 'GHOSTECH', subtitle: 'Our exciting 5-day of Ghostech serves a dynamic blend of technical workshops', months: 'Feb', day: '30'),
                  const SizedBox(
                    width: 19,
                  ),
                  mainRow.rowEvents(title: 'GHOSTECH', subtitle: 'Our exciting 5-day of Ghostech serves a dynamic blend of technical workshops', months: 'Feb', day: '30'),
                  const SizedBox(
                    width: 19,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: mainRow.titleItem(title: 'Awards'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  mainRow.rowItems(
                      image: 'images/pic2.jpeg',
                      text: 'IEEE Region8 Entrepreneurship week 2022'),
                  const SizedBox(
                    width: 19,
                  ),
                  mainRow.rowItems(
                      image: 'images/pic2.jpeg',
                      text: 'IEEE Region8 Entrepreneurship week 2022'),
                  const SizedBox(
                    width: 19,
                  ),
                  mainRow.rowItems(
                      image: 'images/pic2.jpeg',
                      text: 'IEEE Region8 Entrepreneurship week 2022'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BarButtoms(),
    );
  }
}

