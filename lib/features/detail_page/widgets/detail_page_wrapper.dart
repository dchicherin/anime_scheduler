import 'package:anime_scheduler/features/detail_page/widgets/back_panel.dart';
import 'package:anime_scheduler/features/schedule_list/model/schedule_item.dart';
import 'package:anime_scheduler/ui_utils/color_getter.dart';
import 'package:anime_scheduler/ui_utils/ui_constatns.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'favorites_button.dart';
import 'header_block.dart';

//Сцена для виджета детальной информации
class DetailPageWrapper extends StatefulWidget {
  const DetailPageWrapper({super.key, required this.scheduleItem});
  final ScheduleItem scheduleItem;
  @override
  State<StatefulWidget> createState() => _DetailPageWrapperState();
}

class _DetailPageWrapperState extends State<DetailPageWrapper> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScheduleItem scheduleItem = widget.scheduleItem;
    final stars = List.generate(5, (index) {
      if (index < scheduleItem.score / 2) {
        return const Icon(
          CupertinoIcons.star_fill,
          color: kDarkOrangeColor,
        );
      } else {
        return const Icon(
          CupertinoIcons.star,
          color: kDarkOrangeColor,
        );
      }
    });

    return Scaffold(
      appBar: BackPanel(
        pageName: scheduleItem.title,
        genre: scheduleItem.mainGenre,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          HeaderBlock(
                            size: size,
                            scheduleItem: scheduleItem,
                            stars: stars,
                          ),
                          Padding(
                            padding: kStandardPaddingAll,
                            child: SizedBox(
                              width: size.width - 32,
                              child: Text(
                                scheduleItem.synopsis,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          kStandardSpacer,
                        ],
                      ),
                    ),
                  ),
                  FavoritesButton(scheduleItem: scheduleItem, size: size),
                ],
              ),
              ClipPath(
                clipper: WaveClipperTwo(flip: true),
                child: Container(
                  height: 60,
                  color: getOffColor(scheduleItem.mainGenre),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
