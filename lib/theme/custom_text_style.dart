import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeGray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyLargeGray800_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyLargeWorkSansBluegray900 =>
      theme.textTheme.bodyLarge!.workSans.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeWorkSansPrimary =>
      theme.textTheme.bodyLarge!.workSans.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumGray800_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumHankenGroteskGray60001 =>
      theme.textTheme.bodyMedium!.hankenGrotesk.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumHankenGroteskPrimaryContainer =>
      theme.textTheme.bodyMedium!.hankenGrotesk.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnError_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumWorkSansBluegray800 =>
      theme.textTheme.bodyMedium!.workSans.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodyMediumWorkSansBluegray900 =>
      theme.textTheme.bodyMedium!.workSans.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallGothicA1 => theme.textTheme.bodySmall!.gothicA1.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallGothicA1Bluegray900 =>
      theme.textTheme.bodySmall!.gothicA1.copyWith(
        color: appTheme.blueGray900,
        fontSize: 12.fSize,
      );
  static get bodySmallGothicA1DeeppurpleA700 =>
      theme.textTheme.bodySmall!.gothicA1.copyWith(
        color: appTheme.deepPurpleA700,
        fontSize: 12.fSize,
      );
  static get bodySmallGothicA1Gray200 =>
      theme.textTheme.bodySmall!.gothicA1.copyWith(
        color: appTheme.gray200,
        fontSize: 12.fSize,
      );
  static get bodySmallGothicA1Gray500 =>
      theme.textTheme.bodySmall!.gothicA1.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
      );
  static get bodySmallGothicA1Gray60001 =>
      theme.textTheme.bodySmall!.gothicA1.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
      );
  static get bodySmallGothicA1Gray700 =>
      theme.textTheme.bodySmall!.gothicA1.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  static get bodySmallGothicA1Gray70012 =>
      theme.textTheme.bodySmall!.gothicA1.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallWorkSansGray500 =>
      theme.textTheme.bodySmall!.workSans.copyWith(
        color: appTheme.gray500,
      );
  // Gothic text style
  static get gothicA1Bluegray900 => TextStyle(
        color: appTheme.blueGray900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).gothicA1;
  // Headline text style
  static get headlineSmallBluegray900 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargeGray700SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Title text style
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumGray700Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get titleMediumHankenGroteskOnError =>
      theme.textTheme.titleMedium!.hankenGrotesk.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 18.fSize,
      );
  static get titleMediumHankenGroteskPrimaryContainer =>
      theme.textTheme.titleMedium!.hankenGrotesk.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryMedium => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWorkSans =>
      theme.textTheme.titleMedium!.workSans.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWorkSansPrimary =>
      theme.textTheme.titleMedium!.workSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDeeppurpleA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get titleSmallGray40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40001,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallLime900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lime900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleSmallOnErrorBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSFProTextPrimary =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWorkSansTeal600 =>
      theme.textTheme.titleSmall!.workSans.copyWith(
        color: appTheme.teal600,
      );
}

extension on TextStyle {
  TextStyle get hankenGrotesk {
    return copyWith(
      fontFamily: 'Hanken Grotesk',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get gothicA1 {
    return copyWith(
      fontFamily: 'Gothic A1',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }

  TextStyle get righteous {
    return copyWith(
      fontFamily: 'Righteous',
    );
  }
}
