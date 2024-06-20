import 'package:anime_scheduler/features/schedule_list/model/schedule_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../ui_utils/color_getter.dart';
import '../../../ui_utils/ui_constatns.dart';

//Карточка записи, содержит базовую информацию. По клику переход на экран с деталями
class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    super.key,
    required this.item,
  });

  final ScheduleItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/details', extra: item);
      },
      child: Padding(
        padding: kStandardPaddingAll,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: getMainColor(item.mainGenre),
            borderRadius: const BorderRadius.all(
              kStandardRadius,
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: kCardThingWidth,
                  height: kCardThingHeight,
                  decoration: BoxDecoration(
                    color: getOffColor(item.mainGenre),
                    borderRadius: kCardShaper,
                  ),
                ),
              ),
              Padding(
                padding: kStandardPaddingAll,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            maxLines: 1,
                            item.title,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          item.status,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          item.broadcastTime,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    const Heart(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  State<StatefulWidget> createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  bool chosen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          chosen = !chosen;
        });
      },
      child: chosen
          ? const Icon(
              CupertinoIcons.heart_fill,
              color: Colors.white,
            )
          : const Icon(
              CupertinoIcons.heart,
              color: Colors.white,
            ),
    );
  }
}
