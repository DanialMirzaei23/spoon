// ignore_for_file: non_constant_identifier_names

import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';



ThemeData lightTheme = ThemeData(
  fontFamily: GenerateStyleFont.poppins,
  brightness: Brightness.light,
  buttonTheme: null,
  radioTheme: null,
  elevatedButtonTheme: null,

  disabledColor: GenerateDataColors.grey_neutral.toHex,

  iconTheme: null,
  cardTheme: null,
  primarySwatch: null,
  typography: null,

  colorScheme:  ColorScheme(
      brightness: Brightness.light,


      primary: GenerateDataColors.orange_primary.toHex,
      onPrimary: GenerateDataColors.white_neutral.toHex,

      primaryContainer: GenerateDataColors.white_neutral.toHex,
      onPrimaryContainer: GenerateDataColors.dark_neutral.toHex,

      secondary: GenerateDataColors.accent.toHex,
      onSecondary: GenerateDataColors.orange_primary.toHex,

      secondaryContainer: GenerateDataColors.accent.toHex,
      onSecondaryContainer: GenerateDataColors.orange1_btn.toHex,

      tertiary: GenerateDataColors.white_neutral.toHex,
      onTertiary: GenerateDataColors.dark_neutral.toHex,

      tertiaryContainer: GenerateDataColors.white_neutral.toHex,
      onTertiaryContainer: GenerateDataColors.dark_neutral.toHex,

      surface: GenerateDataColors.white_neutral.toHex,
      onSurface:GenerateDataColors.dark_neutral.toHex,
      surfaceVariant: GenerateDataColors.grey_neutral.toHex,
      onSurfaceVariant: null,

      inverseSurface: null,
      onInverseSurface: null,
      inversePrimary: null,

      background: GenerateDataColors.lite_neutral.toHex,
      onBackground: GenerateDataColors.dark_neutral.toHex,

      ///Error like TextField Invalid
      error: GenerateDataColors.red.toHex,
      onError: GenerateDataColors.white_neutral.toHex,

      errorContainer: GenerateDataColors.red.toHex,
      onErrorContainer: GenerateDataColors.white_neutral.toHex,

      outline: GenerateDataColors.grey_neutral.toHex,
      outlineVariant: GenerateDataColors.grey1_neutral.toHex,

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