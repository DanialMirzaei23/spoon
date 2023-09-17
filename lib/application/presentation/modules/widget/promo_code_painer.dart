import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'dart:ui' as ui;
import '../../../packages/package.dart';

class PromoCodePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = ui.Gradient.linear(
          Offset(0, size.height * .5), Offset(size.width, size.height * .5), [
        const Color(0xffFF9921),
        GenerateDataColors.orange_primary.toHex,
      ])
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path = Path();

    path.moveTo(size.width * .5, 0);

    path.lineTo(size.width * .9, 0);

    path.quadraticBezierTo(size.width, 0, size.width, size.height * .2);

    path.lineTo(size.width, size.height * .38); // height => .5 - .12

    path.quadraticBezierTo(size.width * .94, size.height * .38,
        size.width * .94, size.height * .5);

    path.quadraticBezierTo(size.width * .94, size.height * .62, size.width,
        size.height * .62); // height point 2 => .5 + .12

    path.lineTo(size.width, size.height * .8);

    path.quadraticBezierTo(
        size.width, size.height, size.width * .9, size.height);

    path.lineTo(size.width * .1, size.height);

    path.quadraticBezierTo(0, size.height, 0, size.height * .8);

    path.lineTo(0, size.height * .62); // height => .5 + .12

    path.quadraticBezierTo(size.width * .06, size.height * .62,
        size.width * .06, size.height * .5);

    path.quadraticBezierTo(size.width * .06, size.height * .38, 0,
        size.height * .38); // height point 2 => .5 - .12

    path.lineTo(0, size.height * .2);

    path.quadraticBezierTo(0, 0, size.width * .1, 0);

    path.lineTo(size.width * .5, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
