import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var tabs = ["关注", "女神", "男神", "LOL", "绝地求生", "才艺主播", "娱乐版块"];
  var tabController;

  @override
  void initState() {
    tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
            isScrollable: true,
            controller: tabController,
            tabs: tabs.map((v) {
              return Tab(
                text: v,
              );
            }).toList()),
        Expanded(
          child: TabBarView(
              controller: tabController,
              children: tabs.map((v) {
                return Center(
                  child: Text(v),
                );
              }).toList()),
        )
      ],
    );
  }
}
