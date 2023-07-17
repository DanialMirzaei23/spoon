import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

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
///just leave it for now
Color AllTextColor = Color(0xFF313131);

ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: AllTextColor,
      fontSize: 40.0,
    ),
    titleMedium: TextStyle(
      color: AllTextColor,
      fontSize: 32.0,
    ),
    titleSmall: TextStyle(
      color: AllTextColor,
      fontSize: 24.0,
    ),
    headlineLarge: null,
    headlineMedium: TextStyle(
      color: AllTextColor,
      fontSize: 20.0,
    ),
    headlineSmall: TextStyle(
      color: AllTextColor,
      fontSize: 18.0,
    ),

    bodyLarge: TextStyle(
      fontSize: 16.0,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
    ),
    ///Use this for Caption
    bodySmall: TextStyle(
      fontSize: 12.0,
    ),

    displayLarge: null,
    displayMedium: null,
    displaySmall: null,

    labelLarge: null,
    labelMedium: null,
    labelSmall: null,
  ),
  buttonTheme: null,
  radioTheme: null,
  elevatedButtonTheme: null,

  disabledColor: Color(0xFF979797),

  iconTheme: null,
  cardTheme: null,
  primarySwatch: null,
  typography: null,

  colorScheme: const ColorScheme(
      brightness: Brightness.light,

      primary: Color(0xFFFE7825),
      onPrimary: Color(0xFFFFFFFF),

      primaryContainer: Color(0xFFFFFFFF),
      onPrimaryContainer: Color(0xFF313131),

      secondary: Color(0xFFFFE1BC),
      onSecondary: Color(0xFFFE7825),

      secondaryContainer: Color(0xFFFFE1BC),
      onSecondaryContainer: Color(0xFFFE7825),

      tertiary: Color(0xFFFFFFFF),
      onTertiary: Color(0xFF313131),

      tertiaryContainer: Color(0xFFFFFFFF),
      onTertiaryContainer: Color(0xFF313131),

      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF313131),
      surfaceVariant: Color(0xFF979797),
      onSurfaceVariant: null,

      inverseSurface: null,
      onInverseSurface: null,
      inversePrimary: null,

      background: Color(0xFFF7F7F3),
      onBackground: Color(0xFF979797),

      ///Error like TextField Invalid
      error: Color(0xFFF13232),
      onError: Color(0xFFFFFFFF),

      errorContainer: Color(0xFFF13232),
      onErrorContainer: Color(0xFFFFFFFF),

      outline: Color(0xFF979797),
      outlineVariant: Color(0xFFDADADA),

      surfaceTint: null,
      scrim: null,
      shadow: null
  ),
  extensions: const <ThemeExtension<dynamic>>{
    GradientExtension(
      primaryGradient: LinearGradient(
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