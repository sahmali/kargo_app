import 'package:flutter/material.dart';
import 'package:kargo_app/widgets/custom_app_bar.dart';
import 'package:kargo_app/widgets/custom_bottom_navigation_bar.dart';
import 'bottom_navigation_bar_screens_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (i) => _onItemTapped(i),
        selectedIndex: _selectedIndex,
      ),
      body: pageList[_selectedIndex],
    ));
  }
}
