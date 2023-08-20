import 'dart:math';

import '../../../packages/package.dart';

class ShapeNavigator extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint()..color = Colors.red;
    var path1  = Path();
    path1.moveTo(0, 200 );
    path1.moveTo(-10, -10 );
    path1.lineTo(400, 0);
    path1.lineTo(0, 0);
    path1.close();
    canvas.drawPath(path1, paint);
    canvas.clipRect(Rect.fromCircle(center: Offset(0,0), radius: 16));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }





}