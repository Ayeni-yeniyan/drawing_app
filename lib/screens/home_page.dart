import 'package:flutter/material.dart';

import '../core/constants.dart';
import 'circle_page.dart';
import 'curve_page.dart';
import 'line_page.dart';
import 'rectangle_page.dart';
import 'triangle_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabsList.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Paint Basics'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.8),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: tabsList,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          LinePage(),
          CirclePage(),
          RectanglePage(),
          TrianglePage(),
          CurvePage(),
        ],
      ),
    );
  }
}
