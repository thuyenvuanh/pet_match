import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const maincolor = Color(0xFFF3BB6B);
const customcolor2 = Color(0xFF174E91);
const customcolor3 = Color(0xFFD43C4C);
const customcolor4 = Color(0xFF968271);


CustomColors lightCustomColors = const CustomColors(
  sourceMaincolor: Color(0xFFF3BB6B),
  maincolor: Color(0xFF825500),
  onMaincolor: Color(0xFFFFFFFF),
  maincolorContainer: Color(0xFFFFDDB3),
  onMaincolorContainer: Color(0xFF291800),
  sourceCustomcolor2: Color(0xFF174E91),
  customcolor2: Color(0xFF275EA7),
  onCustomcolor2: Color(0xFFFFFFFF),
  customcolor2Container: Color(0xFFD6E3FF),
  onCustomcolor2Container: Color(0xFF001B3D),
  sourceCustomcolor3: Color(0xFFD43C4C),
  customcolor3: Color(0xFFB42438),
  onCustomcolor3: Color(0xFFFFFFFF),
  customcolor3Container: Color(0xFFFFDAD9),
  onCustomcolor3Container: Color(0xFF40000A),
  sourceCustomcolor4: Color(0xFF968271),
  customcolor4: Color(0xFF8B5000),
  onCustomcolor4: Color(0xFFFFFFFF),
  customcolor4Container: Color(0xFFFFDCBE),
  onCustomcolor4Container: Color(0xFF2D1600),
);

CustomColors darkCustomColors = const CustomColors(
  sourceMaincolor: Color(0xFFF3BB6B),
  maincolor: Color(0xFFFFB94F),
  onMaincolor: Color(0xFF452B00),
  maincolorContainer: Color(0xFF624000),
  onMaincolorContainer: Color(0xFFFFDDB3),
  sourceCustomcolor2: Color(0xFF174E91),
  customcolor2: Color(0xFFA9C7FF),
  onCustomcolor2: Color(0xFF003063),
  customcolor2Container: Color(0xFF00468B),
  onCustomcolor2Container: Color(0xFFD6E3FF),
  sourceCustomcolor3: Color(0xFFD43C4C),
  customcolor3: Color(0xFFFFB3B4),
  onCustomcolor3: Color(0xFF680016),
  customcolor3Container: Color(0xFF920023),
  onCustomcolor3Container: Color(0xFFFFDAD9),
  sourceCustomcolor4: Color(0xFF968271),
  customcolor4: Color(0xFFFFB871),
  onCustomcolor4: Color(0xFF4A2800),
  customcolor4Container: Color(0xFF6A3C00),
  onCustomcolor4Container: Color(0xFFFFDCBE),
);



/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceMaincolor,
    required this.maincolor,
    required this.onMaincolor,
    required this.maincolorContainer,
    required this.onMaincolorContainer,
    required this.sourceCustomcolor2,
    required this.customcolor2,
    required this.onCustomcolor2,
    required this.customcolor2Container,
    required this.onCustomcolor2Container,
    required this.sourceCustomcolor3,
    required this.customcolor3,
    required this.onCustomcolor3,
    required this.customcolor3Container,
    required this.onCustomcolor3Container,
    required this.sourceCustomcolor4,
    required this.customcolor4,
    required this.onCustomcolor4,
    required this.customcolor4Container,
    required this.onCustomcolor4Container,
  });

  final Color? sourceMaincolor;
  final Color? maincolor;
  final Color? onMaincolor;
  final Color? maincolorContainer;
  final Color? onMaincolorContainer;
  final Color? sourceCustomcolor2;
  final Color? customcolor2;
  final Color? onCustomcolor2;
  final Color? customcolor2Container;
  final Color? onCustomcolor2Container;
  final Color? sourceCustomcolor3;
  final Color? customcolor3;
  final Color? onCustomcolor3;
  final Color? customcolor3Container;
  final Color? onCustomcolor3Container;
  final Color? sourceCustomcolor4;
  final Color? customcolor4;
  final Color? onCustomcolor4;
  final Color? customcolor4Container;
  final Color? onCustomcolor4Container;

  @override
  CustomColors copyWith({
    Color? sourceMaincolor,
    Color? maincolor,
    Color? onMaincolor,
    Color? maincolorContainer,
    Color? onMaincolorContainer,
    Color? sourceCustomcolor2,
    Color? customcolor2,
    Color? onCustomcolor2,
    Color? customcolor2Container,
    Color? onCustomcolor2Container,
    Color? sourceCustomcolor3,
    Color? customcolor3,
    Color? onCustomcolor3,
    Color? customcolor3Container,
    Color? onCustomcolor3Container,
    Color? sourceCustomcolor4,
    Color? customcolor4,
    Color? onCustomcolor4,
    Color? customcolor4Container,
    Color? onCustomcolor4Container,
  }) {
    return CustomColors(
      sourceMaincolor: sourceMaincolor ?? this.sourceMaincolor,
      maincolor: maincolor ?? this.maincolor,
      onMaincolor: onMaincolor ?? this.onMaincolor,
      maincolorContainer: maincolorContainer ?? this.maincolorContainer,
      onMaincolorContainer: onMaincolorContainer ?? this.onMaincolorContainer,
      sourceCustomcolor2: sourceCustomcolor2 ?? this.sourceCustomcolor2,
      customcolor2: customcolor2 ?? this.customcolor2,
      onCustomcolor2: onCustomcolor2 ?? this.onCustomcolor2,
      customcolor2Container: customcolor2Container ?? this.customcolor2Container,
      onCustomcolor2Container: onCustomcolor2Container ?? this.onCustomcolor2Container,
      sourceCustomcolor3: sourceCustomcolor3 ?? this.sourceCustomcolor3,
      customcolor3: customcolor3 ?? this.customcolor3,
      onCustomcolor3: onCustomcolor3 ?? this.onCustomcolor3,
      customcolor3Container: customcolor3Container ?? this.customcolor3Container,
      onCustomcolor3Container: onCustomcolor3Container ?? this.onCustomcolor3Container,
      sourceCustomcolor4: sourceCustomcolor4 ?? this.sourceCustomcolor4,
      customcolor4: customcolor4 ?? this.customcolor4,
      onCustomcolor4: onCustomcolor4 ?? this.onCustomcolor4,
      customcolor4Container: customcolor4Container ?? this.customcolor4Container,
      onCustomcolor4Container: onCustomcolor4Container ?? this.onCustomcolor4Container,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceMaincolor: Color.lerp(sourceMaincolor, other.sourceMaincolor, t),
      maincolor: Color.lerp(maincolor, other.maincolor, t),
      onMaincolor: Color.lerp(onMaincolor, other.onMaincolor, t),
      maincolorContainer: Color.lerp(maincolorContainer, other.maincolorContainer, t),
      onMaincolorContainer: Color.lerp(onMaincolorContainer, other.onMaincolorContainer, t),
      sourceCustomcolor2: Color.lerp(sourceCustomcolor2, other.sourceCustomcolor2, t),
      customcolor2: Color.lerp(customcolor2, other.customcolor2, t),
      onCustomcolor2: Color.lerp(onCustomcolor2, other.onCustomcolor2, t),
      customcolor2Container: Color.lerp(customcolor2Container, other.customcolor2Container, t),
      onCustomcolor2Container: Color.lerp(onCustomcolor2Container, other.onCustomcolor2Container, t),
      sourceCustomcolor3: Color.lerp(sourceCustomcolor3, other.sourceCustomcolor3, t),
      customcolor3: Color.lerp(customcolor3, other.customcolor3, t),
      onCustomcolor3: Color.lerp(onCustomcolor3, other.onCustomcolor3, t),
      customcolor3Container: Color.lerp(customcolor3Container, other.customcolor3Container, t),
      onCustomcolor3Container: Color.lerp(onCustomcolor3Container, other.onCustomcolor3Container, t),
      sourceCustomcolor4: Color.lerp(sourceCustomcolor4, other.sourceCustomcolor4, t),
      customcolor4: Color.lerp(customcolor4, other.customcolor4, t),
      onCustomcolor4: Color.lerp(onCustomcolor4, other.onCustomcolor4, t),
      customcolor4Container: Color.lerp(customcolor4Container, other.customcolor4Container, t),
      onCustomcolor4Container: Color.lerp(onCustomcolor4Container, other.onCustomcolor4Container, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourceMaincolor]
  ///   * [CustomColors.maincolor]
  ///   * [CustomColors.onMaincolor]
  ///   * [CustomColors.maincolorContainer]
  ///   * [CustomColors.onMaincolorContainer]
  ///   * [CustomColors.sourceCustomcolor2]
  ///   * [CustomColors.customcolor2]
  ///   * [CustomColors.onCustomcolor2]
  ///   * [CustomColors.customcolor2Container]
  ///   * [CustomColors.onCustomcolor2Container]
  ///   * [CustomColors.sourceCustomcolor3]
  ///   * [CustomColors.customcolor3]
  ///   * [CustomColors.onCustomcolor3]
  ///   * [CustomColors.customcolor3Container]
  ///   * [CustomColors.onCustomcolor3Container]
  ///   * [CustomColors.sourceCustomcolor4]
  ///   * [CustomColors.customcolor4]
  ///   * [CustomColors.onCustomcolor4]
  ///   * [CustomColors.customcolor4Container]
  ///   * [CustomColors.onCustomcolor4Container]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourceMaincolor: sourceMaincolor!.harmonizeWith(dynamic.primary),
      maincolor: maincolor!.harmonizeWith(dynamic.primary),
      onMaincolor: onMaincolor!.harmonizeWith(dynamic.primary),
      maincolorContainer: maincolorContainer!.harmonizeWith(dynamic.primary),
      onMaincolorContainer: onMaincolorContainer!.harmonizeWith(dynamic.primary),
      sourceCustomcolor2: sourceCustomcolor2!.harmonizeWith(dynamic.primary),
      customcolor2: customcolor2!.harmonizeWith(dynamic.primary),
      onCustomcolor2: onCustomcolor2!.harmonizeWith(dynamic.primary),
      customcolor2Container: customcolor2Container!.harmonizeWith(dynamic.primary),
      onCustomcolor2Container: onCustomcolor2Container!.harmonizeWith(dynamic.primary),
      sourceCustomcolor3: sourceCustomcolor3!.harmonizeWith(dynamic.primary),
      customcolor3: customcolor3!.harmonizeWith(dynamic.primary),
      onCustomcolor3: onCustomcolor3!.harmonizeWith(dynamic.primary),
      customcolor3Container: customcolor3Container!.harmonizeWith(dynamic.primary),
      onCustomcolor3Container: onCustomcolor3Container!.harmonizeWith(dynamic.primary),
      sourceCustomcolor4: sourceCustomcolor4!.harmonizeWith(dynamic.primary),
      customcolor4: customcolor4!.harmonizeWith(dynamic.primary),
      onCustomcolor4: onCustomcolor4!.harmonizeWith(dynamic.primary),
      customcolor4Container: customcolor4Container!.harmonizeWith(dynamic.primary),
      onCustomcolor4Container: onCustomcolor4Container!.harmonizeWith(dynamic.primary),
    );
  }
}