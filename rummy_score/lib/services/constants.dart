import 'package:flutter/material.dart';

/* App information */
const kAppVersion = '1.0';
const kAppCreatorName = 'ArteneR';
const kAppCreatorWebpage = 'https://artener.ro';

/* Players */
const kPlayersLimit = 4;
const kPlayersMinimum = 2;

/* Colors */
const kColorPrimary = Color(0xFFC12121); // Dark Red
const kColorTextPrimary = Color(0xFF414141); // Black
const kColorTextSecondary = Color(0xFFFFFFFF); // White
const kColorTextGrey = Color(0xFF9D9D9D); // Grey

/* Font Size */
const kFontSizeSmaller = 8.0;
const kFontSizeSmall = 12.0;
const kFontSizeDefault = 16.0;
const kFontSizeLarge = 20.0;
const kFontSizeLarger = 30.0;

/* Text Style */
const kTextStyleGreyDefaultNormal = TextStyle(
  color: kColorTextGrey,
  fontSize: kFontSizeDefault,
  fontWeight: FontWeight.normal,
);
const kTextStyleGreyDefaultBold = TextStyle(
  color: kColorTextGrey,
  fontSize: kFontSizeDefault,
  fontWeight: FontWeight.bold,
);
const kTextStyleGreySmallNormal = TextStyle(
  color: kColorTextGrey,
  fontSize: kFontSizeSmall,
  fontWeight: FontWeight.normal,
);
