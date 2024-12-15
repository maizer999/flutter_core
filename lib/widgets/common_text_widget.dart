import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextWidget extends StatelessWidget {
  final String text;
  final bool inherit;
  final Color? color;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextBaseline? textBaseline;
  final double? height;
  final TextLeadingDistribution? leadingDistribution;
  final Locale? locale;
  final Paint? foreground;
  final Paint? background;
  final List<Shadow>? shadows;
  final List<FontFeature>? fontFeatures;
  final List<FontVariation>? fontVariations;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final double? decorationThickness;
  final String? debugLabel;
  final String? fontFamily;
  final List<String>? fontFamilyFallback;
  final String? package;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;

  const CommonTextWidget({
    super.key,
    required this.text,
    this.inherit = true,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.leadingDistribution,
    this.locale,
    this.foreground,
    this.background,
    this.shadows,
    this.fontFeatures,
    this.fontVariations,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    this.fontFamily,
    this.fontFamilyFallback,
    this.package,
    this.overflow,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      formatNumber(text).tr(),
      softWrap: true,
      style: TextStyle(
          inherit: inherit,
          color: color,
          backgroundColor: backgroundColor,
          fontSize: fontSize?.sp ?? 12.sp,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          textBaseline: textBaseline,
          height: height?.h,
          leadingDistribution: leadingDistribution,
          locale: locale,
          foreground: foreground,
          background: background,
          shadows: shadows,
          fontFeatures: fontFeatures,
          fontVariations: fontVariations,
          decoration: decoration,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decorationThickness: decorationThickness,
          debugLabel: debugLabel,
          fontFamily: fontFamily ,
          fontFamilyFallback: fontFamilyFallback,
          package: package,
          overflow: overflow ?? TextOverflow.ellipsis),
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines ?? 20,
    );
  }
}

String formatNumber(dynamic value) {
  if (value == "null" ||
      value == null ||
      value == 0 ||
      value == "" ||
      value == "0" ||
      value == "0.0" ||
      value == 0.0) {
    return "-";
  }

  try {
    double parsedValue = double.parse(value.toString());
    if (parsedValue == parsedValue.toInt()) {
      return parsedValue.toInt().toString();
    } else {
      return parsedValue.toString();
    }
  } catch (e) {
    return value.toString();
  }
}
