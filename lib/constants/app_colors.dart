import 'package:flutter/material.dart';

import 'app_local.dart';

/// A class that defines custom color static constants for the application.
class AppColors {
  //mawani Color Code
  static const Color kPrimaryColor = Color(0xFF006782);
  static const Color kPrimaryBoldColor = Color(0xFF167C84);
  static const Color kcScaffoldBackgroundColor = Color(0xFFFFFFFF);
  static const Color kPrimaryLight = Color(0xFF167C84);
  static const Color kBottonColor = Color(0xFF00AFAA);
  static const Color kBorderColor = Color(0xFFD9D8D6);
  static const Color kBgColor = Color(0xFFFBFBFB);
  static const Color kcardColor = Color(0xFFEFEFEF);
  static const Color kcDarkGray3Color = Color(0xFF54565a);
  static const Color kfaintGrayColor = Color(0xFFE5E4E4);
  static const Color kcDarkGray4Color = Color(0xFF54565A);
  static const Color kPrimaryFaintGreenColor = Color(0xFF41A757);
  static const Color kConditionalApprovedColor = Color(0xFF3bd4ae);
  static const Color kinActiveColor = Color(0xFFcddb00);
  static const Color kOrangeColor = Color(0xFFff8300); // Orange
  // Color Codes
  static const Color kDashboardHeadingDate = Color(0xFF000000); // Black
  static const Color kHeadingTextColor = Color(0xFF167C84); // Teal Green
  static const Color kAquaGreen = Color.fromARGB(255, 56, 77, 76); // Aqua Green
  static const Color kFentSkyBlue = Color(0xFF00b2e3); // Sky Blue
  static const Color kLimeYellow = Color(0xFFcddb00); // Lime Yellow
  static const Color kFentRed = Color(0xFFE94E4E); // Red
  static const Color kFentGrey = Color(0xFFD9D8D6); // Grey
  static const Color kDarkRed = Color(0xFFC12424);
  static const Color kcBlackColor = Color(0xff000000);
  static const Color kMButtonColor = Color(0xff0E6781);
  static const Color kDarkGrey = Color(0xFF54565A);
  static const Color kWhite = Color(0xffffffff);

  static Color strongPink = HexColor.fromHex('#e52688');
  static final Color greenyBlue = HexColor.fromHex("#3ebeb7");
  static final Color iceBlue = HexColor.fromHex("#f1f2f3");
  static final Color veryLightPink = HexColor.fromHex("#c1c1c1");
  static final Color darkGrey = HexColor.fromHex("#0f0f10");
  static final Color powderBlue = HexColor.fromHex("#d6dadd");
  static final Color lightGreyBlue = HexColor.fromHex("#abafb4");
  static final Color lightBlueGrey = HexColor.fromHex("#c4c9cf");
  static final Color blueyGrey = HexColor.fromHex("#959a9f");
  static final Color socialShape = HexColor.fromHex("#000000");
  static final Color coolGreen = HexColor.fromHex("#3ebe66");
  static final Color pinkyRed = HexColor.fromHex("#f32848");
  static final Color white = HexColor.fromHex("#ffffff");
  static final Color textFieldLineColor = HexColor.fromHex("#e8edf1");
  static final Color pink = HexColor.fromHex("#edbcd5");
  static final Color error = HexColor.fromHex("#da2643");
  static final Color accountHeaderColor = HexColor.fromHex("#1a1a1a");
  static final Color accountTextColor = HexColor.fromHex("#a6a6a6");
  static final Color membershipTextColor = HexColor.fromHex("#ffb7dc");
  static final Color membershipDividerColor = HexColor.fromHex("#fc8fc7");
  static final Color starColor = HexColor.fromHex("#eecd3e");

//
  static const Color kSecondaryLight = Color(0xFF9C9C9C);
  static const Color kError = Color(0xFFB00020);
  static const Color kRatingIconColor = Color(0xFFFFC319);
  static const Color kcDarkGray2Color = Color(0xff303633);

  static const Color kcPrimaryGreenColor = Color(0xff56A145);
  static const Color kcPrimaryLightGreenColor = Color(0xffabd0a2);
  static const Color kcPrimaryLightGreenColor2 = Color(0xffDBFFD9);
  static const Color kcPremiumStarColorBackground = Color(0xffCDFFC2);
  static const Color kcPrimaryDarkGreenColor = Color(0xff2D721D);
  static const Color kcPrimaryOrangeColor = Color(0xffFF941F);
  static const Color kcPrimaryDarkOrangeColor = Color(0xffE97A00);
  static const Color kcPrimaryLightOrangeColor = Color(0xffFFFDEC);
  static const Color kcExpenseColor = Color(0xffE65025);
  static const Color kcScaffoldBackgroundColor2 = Color(0xffF8F8F8);
  static const Color kcDarkRed = Color(0xff5D1919);
  static const Color kcLightGreen = Color(0xff006B63);
  static const Color kcLight2Green = Color(0xff7BE376);
  static const Color kExpansionTileBg = Color(0xFFF1FCFF);
  static Color kLightGreyText = const Color(0xFF2A2A2A).withOpacity(0.8);

// Secondary Color
  static const Color kcSecondaryMintColor = Color(0xff53E0DB);
  static const Color kcSecondarySteelColor = Color(0xff6897B1);
  static const Color kcSecondaryPlumColor = Color(0xff3059C9);
  static const Color kcSecondarySunFlowerColor = Color(0xff24B6F7);

// Gray Scale
  static const Color kcWhiteColor = Color(0xffFFFFFF);
  static const Color kcGray1Color = Color(0xffF9FEFB);
  static const Color kcGray2Color = Color(0xffDCDCDC);
  static const Color kcMediumGray1Color = Color(0xffC6CEC9);
  static const Color kcMediumGray2Color = Color(0xff7B857F);
  static const Color kcMediumGray2ColorWithOpactity50 = Color(0x807B857F);
  static const Color kcDarkGray1Color = Color(0xff575E5A);
  static const Color kcLightGrayColor = Color(0xffF0EFEF);

  static const Color kcGrayColor = Color(0xff7A847E);
  static const Color kcLightBlackColor = Color(0xff303633);

  static const Color kcShadowColor = Color(0xff00000D);
  static const Color kcOrTextColor = Color(0xff635B5B);
  static const Color kcLinkDisabledBottomColor = Color(0xff707070);
  static const Color kcLinkDisabledBottomColorWithOpcity50 = Color(0x80707070);
}

class HexColor {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
