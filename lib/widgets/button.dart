import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BarButtoms extends StatelessWidget {
  const BarButtoms({super.key});
   final int _selectedIconBar=0;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      iconSize: 34,
      currentIndex: _selectedIconBar,
      backgroundColor: const Color(0xff024272),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('images/book.svg'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('images/book.svg'),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('images/Events Icon.svg'),
          label: 'Events',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('images/people.svg'),
          label: 'Boards',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('images/Awards Icon.svg'),
          label: 'Awards',
        ),
      ],
    );
  }
}
