import 'dart:math';

import 'package:anime_scheduler/ui_utils/ui_constatns.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//Хедер с картинкой, сжимается при скролле
class MainPageHeader implements SliverPersistentHeaderDelegate {
  MainPageHeader({
    required this.minExtent,
    required this.maxExtent,
    required this.vsyncer,
  });

  @override
  final double minExtent;
  @override
  final double maxExtent;
  final TickerProvider vsyncer;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: maxExtent,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: max(minExtent - 1, maxExtent - shrinkOffset - 1),
            decoration: const BoxDecoration(
              color: kDarkGreenColor,
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: max(minExtent - kFooterHeight,
                    (maxExtent - shrinkOffset) * 0.8),
                height: max(minExtent - kFooterHeight,
                    (maxExtent - shrinkOffset) * 0.8),
                decoration: BoxDecoration(
                  color: kLightGreenColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(maxExtent),
                  ),
                ),
              )),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: kStandardPaddingH,
                child: SizedBox(
                  height: max(minExtent - kFooterHeight,
                      (maxExtent - shrinkOffset) * 0.8),
                  width: 200,
                  child: Center(
                    child: Text(
                      'This week anime schedule',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: kStandardRadius,
                  topRight: kStandardRadius,
                ),
              ),
              width: double.infinity,
              height: kFooterHeight,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/old_tv_pot.png',
              height: max(minExtent, (maxExtent - shrinkOffset) * 0.65),
              alignment: Alignment.bottomRight,
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration =>
      FloatingHeaderSnapConfiguration();

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      null;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  TickerProvider? get vsync => vsyncer;
}
