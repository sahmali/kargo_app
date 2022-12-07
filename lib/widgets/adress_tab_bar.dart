import 'package:flutter/material.dart';
import 'package:kargo_app/utils/custom_padding.dart';

class AdressTabBar extends StatefulWidget {
  const AdressTabBar({Key? key}) : super(key: key);

  @override
  State<AdressTabBar> createState() => _AdressTabBarState();
}

class _AdressTabBarState extends State<AdressTabBar>
    with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: ListView(
        shrinkWrap: true,
        children: [
          TabBar(tabs: [
            Tab(text: 'Turkey'),
            Tab(text: 'BEE'),
            Tab(text: 'USA'),
          ]),
          TabBarView(children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ])
        ],
      ),
    );
  }
}
