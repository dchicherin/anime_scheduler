import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../ui_utils/color_getter.dart';
import '../../../ui_utils/ui_constatns.dart';
import '../../schedule_list/model/schedule_item.dart';

//Кнопка для добавления в избранное, на самом деле просто контейнер
class FavoritesButton extends StatelessWidget {
  const FavoritesButton({
    super.key,
    required this.scheduleItem,
    required this.size,
  });

  final ScheduleItem scheduleItem;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kStandardPaddingAll,
      child: Container(
        decoration: BoxDecoration(
          color: getOffColor(scheduleItem.mainGenre),
          borderRadius: const BorderRadius.all(kStandardRadius),
        ),
        width: size.width / 1.2,
        child: Padding(
          padding: kStandardPaddingAll,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add to favorites ',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Icon(
                CupertinoIcons.heart,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
