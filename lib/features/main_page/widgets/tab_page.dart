import 'package:anime_scheduler/features/schedule_list/widgets/schedule_list_wrapper.dart';
import 'package:flutter/material.dart';

import 'custom_nav_bar.dart';

//Страница с табами, показывается первой
class TabPage extends StatefulWidget {
  const TabPage({
    super.key,
  });

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          const ScheduleListWrapper(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: CustomNavBar(tabController: _tabController),
    );
  }
}
