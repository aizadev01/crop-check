import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:cropcheckpro/screens/Pages/Account.dart';
import 'package:cropcheckpro/screens/Pages/WeatherPage.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

import '../widgets/custom_nav_bar.dart';
import 'Pages/Home.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();

  int _page = 0;

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;

    });
  }

  List pages = [
    const Home(),
     WeatherUI(),
    const Account(),
  ];

  Future<void> requestPermission() async {
    try {
      await Permission.storage.request();
      await Permission.location.request();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      bottomNavigationBar: isKeyboardOpen
          ? null
          : CustomBottomNavBar(
              selectedIndex: _page,
              selectedColor: kDarkGreenColor,
              unselectedColor: kSpiritedGreen,
              onTapped: (index) {
                setState(() {
                  _page = index;
                });
              },
              items: const [
                Icon(Icons.home),
                Icon(Icons.sunny),
                Icon(Icons.person),
              ],
            ),
      body: pages[_page],
    );
  }
}
