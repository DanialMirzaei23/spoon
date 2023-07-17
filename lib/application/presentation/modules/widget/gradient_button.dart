// todo => button Gradient


// ignore_for_file: non_constant_identifier_names

import 'package:spoon/application/packages/package.dart';

///
/// GradientExtension of type ThemeExtension<GradientExtension> is an extension
/// to themeData enabling support of gradient in themeData.
/// Other thing can be added here as extension to increase themeData functionality.
///

@immutable
class GradientExtension extends ThemeExtension<GradientExtension> {
  const GradientExtension({
    required this.button_gradient,
  });

  final Gradient button_gradient;

  @override
  ThemeExtension<GradientExtension> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<GradientExtension> lerp(covariant ThemeExtension<GradientExtension>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }

// TODO: snipped code from flutter doc
///@override
///Gradient copyWith({Color? brandColor, Color? danger}) {
///  return Gradient(
///    brandColor: brandColor ?? this.brandColor,
///    danger: danger ?? this.danger,
///  );
///}
///
///@override
///Gradient lerp(Gradient? other, double t) {
///  if (other is! Gradient) {
///    return this;
///  }
///  return Gradient(
///    brandColor: Color.lerp(brandColor, other.brandColor, t),
///    danger: Color.lerp(danger, other.danger, t),
///  );
///}
}