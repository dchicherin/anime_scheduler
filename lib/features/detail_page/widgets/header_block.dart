import 'package:flutter/material.dart';

import '../../../ui_utils/ui_constatns.dart';
import '../../schedule_list/model/schedule_item.dart';

//Верхняя часть детальной информации, содержит картинку из интернета и некоторые данные
class HeaderBlock extends StatelessWidget {
  const HeaderBlock({
    super.key,
    required this.size,
    required this.scheduleItem,
    required this.stars,
  });

  final Size size;
  final ScheduleItem scheduleItem;
  final List<Icon> stars;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kStandardSpacer,
        Expanded(
          child: FadeInImage.assetNetwork(
            height: size.height / 3,
            image: scheduleItem.imageURL,
            placeholder: 'assets/spinner.gif',
            imageErrorBuilder: (context, stack, trace) => SizedBox(
              height: size.height / 3,
              child: const Center(
                child: Text('Failed to load an image'),
              ),
            ),
          ),
        ),
        kStandardSpacer,
        Expanded(
            child: SizedBox(
          height: size.height / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Popularity:'),
              Text('${scheduleItem.popularity}'),
              kStandardSpacer,
              const Text('Score:'),
              Row(
                children: stars,
              ),
            ],
          ),
        )),
        kStandardSpacer,
      ],
    );
  }
}
