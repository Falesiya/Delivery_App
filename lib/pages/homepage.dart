// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:deliveryapp/utils/currentlocation.dart';
import 'package:deliveryapp/utils/customdrawer.dart';
import 'package:deliveryapp/utils/customtabbar.dart';
import 'package:deliveryapp/utils/mydescription.dart';
import 'package:deliveryapp/utils/mysliverappbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySliverApp(
              title: MyCustomTabbar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary),

                  //current location
                  MyCurrentLocation(),

                  //description box
                  MyDescription(),
                ],
              ),
            )
          ],
          body: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Text("First Tab Items")),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Text("second Tab Items")),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Text("third Tab Items")),
            ],
          ),
        ));
  }
}
