import 'package:flutter/material.dart';
import 'extensions/gradient_extension.dart';

///
/// Light theme of the app is here
///

/// All colors from figma is here in HEX
List<Color> allColors = const [
  Color(0xFFFE7825),
  Color(0xFFFFCD90),
  Color(0xFFFFE1BC),
  Color(0xFF313131),
  Color(0xFF979797),
  Color(0xFFDADADA),
  Color(0xFFF7F7F3),
  Color(0xFFFFFFFF),
  Color(0xFFF13232),
  Color(0xFFFFb21C),
];
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  /// Text Theme to Implement typography in whole app
  textTheme: const TextTheme(
    /// these are the only supported ones other properties are outdated
    titleLarge: null,
    titleMedium: null,
    titleSmall: null,

    headlineLarge: null,
    headlineMedium: null,
    headlineSmall: null,

    bodyLarge: null,
    bodyMedium: null,
    bodySmall: null,

    displayLarge: null,
    displayMedium: null,
    displaySmall: null,

    labelLarge: null,
    labelMedium: null,
    labelSmall: null,
  ),

  /// Button Themes
  buttonTheme: null,
  radioTheme: null,
  elevatedButtonTheme: null,

  /// Color of DisabledWidgets like button
  disabledColor: null,

  /// Other Themes
  iconTheme: null,
  cardTheme: null,
  primarySwatch: null,
  typography: null,

  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    /// Primary Button
    primary: Color(0xFFFE7825),
    onPrimary: Color(0xFFFFFFFF),

    /// For Secondary Button
    primaryContainer: Color(0xFFFFE1BC),
    onPrimaryContainer: Color(0xFFFE7825),

    /// For BackButton Setting Button etc
    secondary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFF313131),

    /// Later use
    secondaryContainer: Color(0xFFFFE1BC),
    onSecondaryContainer: Color(0xFFFFE1BC),

    /// Later use
    tertiary: null,
    onTertiary: null,
    tertiaryContainer: null,
    onTertiaryContainer: null,

    /// Card Widget background and foreground
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF313131),

    /// Later use
    inverseSurface: null,
    inversePrimary: null,
    onInverseSurface: null,
    surfaceVariant: null,
    onSurfaceVariant: null,
    surfaceTint: null,

    /// Background color and color of the texts on background
    background: Color(0xFFF7F7F3),
    onBackground: Color(0xFFF7F7F3),///null

    /// TextField invalid color and other error related stuff
    error: Color(0xFFF13232),
    onError: Color(0xFFFFFFFF),
    errorContainer: null,
    onErrorContainer: null,

    /// etc, Later use
    outline: null,
    outlineVariant: null,
    scrim: null,
    shadow: null
  ),
  /// You can add anything as extension here to increase themeData functionality
  extensions: const <ThemeExtension<dynamic>>{
    GradientExtension(
      gradient1: LinearGradient(
        begin: Alignment(-1.1, -0.5),
        end: Alignment(0.5, 0.2),
        colors: [
          Color.fromRGBO(250, 150, 32, 1),
          Color.fromRGBO(255, 104, 10, 1),
        ],
      ),
    ),
  },
  useMaterial3: true,
);
