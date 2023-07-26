import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../packages/package.dart';

extension ConvertTextData on String {
  toText({
    required final BuildContext context ,
    final TextDirection textDirection = TextDirection.ltr,
    final TextAlign textAlign = TextAlign.left,
    final double fontSize = 14.0,
    final Color color =Colors.black,
    final FontWeight fontWeight =FontWeight.normal
  }) =>
      Text(
        this,
        textDirection: textDirection,
        textAlign: textAlign,
        style: ToStyle(
            fontWeight: fontWeight,
            fontSize: fontSize == 14.0 ? Theme.of(context).textTheme.bodyMedium!.fontSize!.toDouble() : fontSize ,
            color: color == Colors.black ? GenerateDataColors.dark_neutral.toHex : color),
      );
}
