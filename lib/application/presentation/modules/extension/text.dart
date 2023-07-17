import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import '../../../packages/package.dart';

extension ConvertTextData on String {
  toText({
    final TextDirection textDirection = TextDirection.ltr,
    final TextAlign textAlign = TextAlign.left,
    final Color color = Colors.black,
    final double fontSize = 14.0,
    final FontWeight fontWeight = FontWeight.normal,
    final FontStyle fontStyle = FontStyle.normal,
    final String fontFamily = 'poppins',
  }) =>
      Text(
        this,
        textDirection: textDirection,
        textAlign: textAlign,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            fontFamily: fontFamily,
        ),
      );
}
