import 'package:flutter/material.dart';
import 'package:ieee/widgets/categories.dart';
import 'package:ieee/widgets/events.dart';
import 'package:ieee/widgets/titleRow.dart';
import 'widgets/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
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
      body: const Padding(
        padding: EdgeInsets.only(left: 19),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: TitleRow(title: 'News'),
            ),
            SizedBox(
              height: 120,
              child: CategoryData1(
                  image: 'images/pic1.jpeg',
                  text: 'Sherlock is a British mystery crime series'),
            ),
            Padding(
              padding: EdgeInsets.only( top: 12,bottom: 12),
              child: TitleRow(title: 'Events'),
            ),
            SizedBox(
              height: 140,
              child: Events(
                  title: 'GHOSTECH',
                  subTitle:
                      'Our exciting 5-day of Ghostech serves a dynamic blend of technical workshops',
                  month: 'Feb',
                  day: '30'),
            ),
            Padding(
              padding: EdgeInsets.only( top: 12,bottom: 12),
              child: TitleRow(title: 'Awards'),
            ),
            SizedBox(
              height: 120,
              child: CategoryData1(
                  image: 'images/pic2.jpeg',
                  text: 'IEEE Region8 Entrepreneurship week 2022'),
            ),

          ],
        ),
      ),
      bottomNavigationBar: const BarButtoms(),
    );
  }
}
