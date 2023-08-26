

import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../../packages/package.dart';

class ShapeNavigator extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint()
      ..color = GenerateDataColors.white_neutral.toHex
      ..strokeWidth = 0
      ..style = PaintingStyle.fill;

    var path1 = Path();

    path1.moveTo(size.width * .05, size.height * .31);
    path1.quadraticBezierTo(size.width * .05, 0, size.width * .13, 0);



    path1.lineTo(size.width * .65, 0);
    path1.quadraticBezierTo(
        size.width * .73, 0, size.width * .73, size.height * .28);



    path1.lineTo(size.width * .73, size.height * .45);
    path1.quadraticBezierTo(
        size.width * .73, size.height * .75, size.width * .78, size.height * .75);



    path1.lineTo(size.width * .9, size.height * .75);
    path1.quadraticBezierTo(size.width * .95, size.height * .75,
        size.width * .95, size.height * .92);


    path1.lineTo(size.width * .95, size.height);

    path1.lineTo(size.width * .05, size.height);
    path1.close();
    canvas.drawPath(path1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
