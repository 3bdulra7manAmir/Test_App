import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppBorders
{
  AppBorders._();

  //Form Border
  /// [TopLeft_20.TopRight_20]
  static BorderRadiusGeometry formBorder = BorderRadius.only(
    topLeft: Radius.circular(20.r),
    topRight: Radius.circular(20.r),
  );

  /// [TopLeft_16.TopRight_16]
  static BorderRadiusGeometry smallCardActionsBorder = BorderRadius.only(
    topLeft: Radius.circular(16.r),
    topRight: Radius.circular(16.r),
  );

  /// [TopLeft_12.TopRight_12]
  static BorderRadiusGeometry indicatorBorder = BorderRadius.only(
    topLeft: Radius.circular(12.r),
    topRight: Radius.circular(12.r),
  );

  /// [TopLeft_10.TopRight_10]
  static BorderRadiusGeometry followBusinessPageBorder = BorderRadius.only(
    topLeft: Radius.circular(10.r),
    topRight: Radius.circular(10.r),
  );

  //Divider
  /// [Circular_4]
  static BorderRadius dividerBorder = BorderRadius.circular(4.r);

  /// [Circular_7]
  static BorderRadius buttonBorder7 = BorderRadius.circular(7.r);

  /// [Circular_10]
  static BorderRadius buttonBorder10 = BorderRadius.circular(10.r);

  /// [Circular_12]
  static BorderRadius buttonBorder12 = BorderRadius.circular(12.r);

  /// [Circular_8]
  static BorderRadius postPriceCard8 = BorderRadius.circular(8.r);

  /// [Circular_6]
  static BorderRadius notificationsCard6 = BorderRadius.circular(6.r);

  /// [Circular_5]
  static BorderRadius buttonBorder5 = BorderRadius.circular(5.r);

  //Text Form Field
  /// [Circular_50]
  static BorderRadius kProductItemRadius = BorderRadius.circular(50.r);

  //Text Form Field
  /// [Circular_100]
  static BorderRadius kCardRadius100 = BorderRadius.circular(100.r);

  //Text Form Field
  /// [Circular_1]
  static BorderRadius datePicker1 = BorderRadius.circular(1.r);
}


abstract class AppBorderWidths
{
  AppBorderWidths._();

  static double width1 = (1.0).w;
  static double width2 = (2.0).w;
}
