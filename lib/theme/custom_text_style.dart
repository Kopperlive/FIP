import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeGray80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyLargeGray8000119 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 19.fSize,
      );
  static get bodyLargeLime700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lime700,
        fontSize: 17.fSize,
      );
  static get bodyLargeRubikGray500 => theme.textTheme.bodyLarge!.rubik.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeWhiteA70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 17.fSize,
      );
  static get bodyMediumK2D => theme.textTheme.bodyMedium!.k2D;
  static get bodyMediumK2DBlack90001 =>
      theme.textTheme.bodyMedium!.k2D.copyWith(
        color: appTheme.black90001.withOpacity(0.52),
      );
  static get bodyMediumK2DGray80001 => theme.textTheme.bodyMedium!.k2D.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumK2D_1 => theme.textTheme.bodyMedium!.k2D;
  static get bodyMediumK2Dff000000 => theme.textTheme.bodyMedium!.k2D.copyWith(
        color: Color(0XFF000000),
      );
  static get bodyMediumK2Dff356070 => theme.textTheme.bodyMedium!.k2D.copyWith(
        color: Color(0XFF356070),
      );
  static get bodySmallK2DBlack90001 => theme.textTheme.bodySmall!.k2D.copyWith(
        color: appTheme.black90001.withOpacity(0.52),
      );
  static get bodySmallK2DBlack90001_1 =>
      theme.textTheme.bodySmall!.k2D.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallK2DGray700 => theme.textTheme.bodySmall!.k2D.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallK2DGray700Light =>
      theme.textTheme.bodySmall!.k2D.copyWith(
        color: appTheme.gray700,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallK2DGray80001 => theme.textTheme.bodySmall!.k2D.copyWith(
        color: appTheme.gray80001,
        fontSize: 11.fSize,
      );
  static get bodySmallK2DWhiteA70001 => theme.textTheme.bodySmall!.k2D.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 8.fSize,
      );
  static get bodySmallK2DWhiteA7000110 =>
      theme.textTheme.bodySmall!.k2D.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 24.fSize,
      );
  // Title text style
  static get titleLargeGray80001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleMediumPoppins => theme.textTheme.titleMedium!.poppins;
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get k2D {
    return copyWith(
      fontFamily: 'K2D',
    );
  }
}
