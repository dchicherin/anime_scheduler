import 'package:anime_scheduler/ui_utils/ui_constatns.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Таббар, большинство экранов пустые
class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kNavBarColor,
        borderRadius: BorderRadius.only(
          topLeft: kStandardRadius,
          topRight: kStandardRadius,
        ),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: kStandardRadius,
          topRight: kStandardRadius,
        ),
        child: TabBar(
          labelColor: kDarkOrangeColor,
          unselectedLabelColor: kDarkerGreyColor,
          controller: _tabController,
          indicatorColor: Colors.transparent,
          tabs: const [
            SizedBox(
              height: kNavBarHeight,
              child: Tab(
                  icon: Icon(
                CupertinoIcons.house,
                size: kIconSize,
              )),
            ),
            Tab(
                icon: Icon(
              CupertinoIcons.heart_fill,
              size: kIconSize,
            )),
            Tab(
                icon: Icon(
              CupertinoIcons.text_insert,
              size: kIconSize,
            )),
            Tab(
                icon: Icon(
              CupertinoIcons.gear,
              size: kIconSize,
            )),
          ],
        ),
      ),
    );
  }
}
