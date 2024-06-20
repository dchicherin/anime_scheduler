import 'package:anime_scheduler/features/schedule_list/widgets/schedule_list_body.dart';
import 'package:anime_scheduler/features/schedule_list/widgets/title_block.dart';
import 'package:flutter/material.dart';
import 'main_page_header.dart';

//Основной скролл главного экрана
class ScheduleListWrapper extends StatefulWidget {
  const ScheduleListWrapper({super.key});

  @override
  State<StatefulWidget> createState() => _ScheduleListWrapperState();
}

class _ScheduleListWrapperState extends State<ScheduleListWrapper>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: MainPageHeader(
              minExtent: size.height * 4 / 27,
              maxExtent: size.height * 4 / 9,
              vsyncer: this,
            ),
          ),
          const TitleBlock(),
          const ScheduleListBody(),
        ],
      ),
    );
  }
}
