import 'package:anime_scheduler/ui_utils/ui_constatns.dart';
import 'package:flutter/material.dart';

//Часть со статическим текстом
class TitleBlock extends StatelessWidget {
  const TitleBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: kStandardPaddingAll,
            child: Text(
              'Schedule',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Padding(
            padding: kStandardPaddingH,
            child: Text(
              'Upcoming series',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.grey),
            ),
          ),
          kStandardSpacer,
        ],
      ),
    );
  }
}
