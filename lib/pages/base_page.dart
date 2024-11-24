import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yummi/constants.dart';
import 'package:yummi/pages/calendar_page.dart';
import 'package:yummi/pages/form_page.dart';
import 'package:yummi/pages/inspiration_page.dart';
import 'package:yummi/pages/search_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() {
    return _BasePageState();
  }
}

class _BasePageState extends State<BasePage> {
  var _selectedIndex = 0;

  final List<Widget> _pages = [
    InspirationPage(),
    SearchPage(),
    CalendarPage(),
    FormPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Constants.ACCENT_COLOR,
        unselectedItemColor: Constants.SUBTITLE_COLOR,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.lightbulb,
              size: 25,
            ),
            label: 'Inspiration',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
            label: 'Suche',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.calendar),
            label: 'Kalender',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plus),
            label: 'Neu',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }
}
