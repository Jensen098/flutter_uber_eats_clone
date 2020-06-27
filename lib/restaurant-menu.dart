import 'package:flutter/material.dart';
import 'package:flutterubereatsclone/widgets/restaurant-banner.dart';
import 'data/menu_items.dart';
import 'package:flutterubereatsclone/widgets/main_menu_item.dart';
import 'data/restaurants.dart';
import 'widgets/restaurant-banner.dart';

class CustomScrollViewExample extends StatefulWidget {
  @override
  _CustomScrollViewExampleState createState() =>
      _CustomScrollViewExampleState();
}

class _CustomScrollViewExampleState extends State<CustomScrollViewExample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<Tab> _tabs = <Tab>[
    Tab(text: 'Order Again'),
    Tab(text: 'For Sharing (or Not)'),
    Tab(text: 'Carnivore Burger'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          floating: true,
          expandedHeight: 380.0,
          title: _showAppBarTitle(),
          flexibleSpace: RestaurantBanner(restaurant: restaurants[0]),
          bottom: _showTabBar(),
        ),
        _showMenuItems(),
      ],
    );
  }

  Widget _showMenuItems() {
    return SliverFixedExtentList(
      itemExtent: 180.0,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return MainMenuItem(
            menuItem: mainMenuItems[0],
          );
        },
      ),
    );
  }

  Widget _showTabBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(48.0),
      child: TabBar(
        isScrollable: true,
        tabs: _tabs,
        controller: _tabController,
      ),
    );
  }

  Widget _showAppBarTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: (() {}),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}
