import 'package:flutter/material.dart';

//Color palette
const kDarkGreenColor = Color(0xFF00664f);
const kLightGreenColor = Color(0xFF4cc491);
const kLightPinkColor = Color(0xFFFFD1DC);
const kDarkPinkColor = Color(0xFFFC8EAC);
const kDarkOrangeColor = Color(0xFFff7648);
const kLightOrangeColor = Color(0xFFffc178);
const kLightBlueColor = Color(0xFF8f98fe);
const kDarkBlueColor = Color(0xFF182988);
const kNavBarColor = Color(0xFFfaf9f9);
const kDarkerGreyColor = Color(0xFF9f9fae);

//Elements
const kStandardPaddingAll = EdgeInsets.all(16.0);
const kStandardPaddingH = EdgeInsets.symmetric(horizontal: 16.0);
const kStandardRadius = Radius.circular(20);
const kCardShaper = BorderRadius.only(
  topRight: Radius.circular(16),
  topLeft: Radius.elliptical(10, 40),
  bottomRight: Radius.elliptical(90, 20),
  bottomLeft: Radius.elliptical(90, 90),
);
const kStandardSpacer = SizedBox(
  height: 16,
  width: 16,
);

//Other
const kFooterHeight = 20.0;
const kCardThingWidth = 150.0;
const kCardThingHeight = 80.0;
const kIconSize = 24.0;
const kNavBarHeight = 65.0;
