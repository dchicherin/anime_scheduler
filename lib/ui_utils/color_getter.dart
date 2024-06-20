import 'dart:ui';

import 'package:anime_scheduler/ui_utils/ui_constatns.dart';

Color getOffColor(String genre) {
  switch (genre) {
    case 'Drama':
      return kDarkBlueColor;
    case 'Action':
      return kLightOrangeColor;
    case 'Romance':
      return kDarkPinkColor;
    default:
      return kDarkGreenColor;
  }
}

Color getMainColor(String genre) {
  switch (genre) {
    case 'Drama':
      return kLightBlueColor;
    case 'Action':
      return kDarkOrangeColor;
    case 'Romance':
      return kLightPinkColor;
    default:
      return kLightGreenColor;
  }
}
