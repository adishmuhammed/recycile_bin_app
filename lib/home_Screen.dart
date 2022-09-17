import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recycile_bin_app/basket_page.dart';
import 'package:recycile_bin_app/controller.dart';
import 'package:recycile_bin_app/datas.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:recycile_bin_app/profile_page.dart';
import 'package:recycile_bin_app/setting_page.dart';

import 'home_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const ProfilePage(),
      BasketPage(),
      SettingsPage()
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: false,
      body: Obx(() => pages[currentIndex.value]),
      bottomNavigationBar: DotNavigationBar(
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 1)
        ],
        items: [
          DotNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              selectedColor: Colors.grey,
              unselectedColor: Colors.grey),
          DotNavigationBarItem(
              icon: const Icon(Icons.person_outline_rounded),
              selectedColor: Colors.grey,
              unselectedColor: Colors.grey),
          DotNavigationBarItem(
              icon: const Icon(Icons.shopping_cart_outlined),
              selectedColor: Colors.grey,
              unselectedColor: Colors.grey),
          DotNavigationBarItem(
              icon: const Icon(Icons.settings_outlined),
              selectedColor: Colors.grey,
              unselectedColor: Colors.grey),
        ],
        currentIndex: currentIndex.value,
        onTap: (index) => currentIndex.value = index,
        dotIndicatorColor: Colors.transparent,
        borderRadius: 69 * (MediaQuery.of(context).size.width / 1080),
      ),
    );
  }
}
