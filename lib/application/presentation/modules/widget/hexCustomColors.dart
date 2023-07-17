import '../../../packages/package.dart';

class ShowHexColors extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }

    final hexNum = int.parse(hexColor, radix: 16);

    if (hexNum == 0) {
      return 0xff000000;
    }

    return hexNum;
  }

  ShowHexColors(final String hexColor) : super(_getColorFromHex(hexColor));
}

class ConvertToHex extends Color {

  static int _convertColorTHex(Color color) {
    var hex = '${color.value}';
    return int.parse(
      hex,
    );
  }

  ConvertToHex(final Color color) : super(_convertColorTHex(color));
}