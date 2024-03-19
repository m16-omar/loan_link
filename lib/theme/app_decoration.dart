import 'package:flutter/material.dart';
import 'package:loan_link/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientErrorContainerToBlueGray => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.errorContainer,
            appTheme.blueGray800,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineAmber => BoxDecoration(
        color: appTheme.yellow100,
        border: Border.all(
          color: appTheme.amber300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGrayF => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray9004f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray10001 => BoxDecoration(
        color: appTheme.deepPurpleA700,
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray100011 => BoxDecoration(
        color: appTheme.orange700,
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray100012 => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeepPurple => BoxDecoration(
        border: Border.all(
          color: appTheme.deepPurple100,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineDeeppurple10001 => BoxDecoration(
        color: appTheme.purple50,
        border: Border.all(
          color: appTheme.deepPurple10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray60001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray40001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray40001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePink => BoxDecoration(
        border: Border.all(
          color: appTheme.pink200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineTeal => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.teal50,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineYellow => BoxDecoration(
        border: Border.all(
          color: appTheme.yellow100,
          width: 1.h,
        ),
      );

  // Primary decorations
  static BoxDecoration get primary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder48 => BorderRadius.circular(
        48.h,
      );
  static BorderRadius get circleBorder74 => BorderRadius.circular(
        74.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL12 => BorderRadius.vertical(
        bottom: Radius.circular(12.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder129 => BorderRadius.circular(
        129.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    