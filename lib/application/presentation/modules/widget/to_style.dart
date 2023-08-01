// ignore_for_file: prefer_const_constructors_in_immutables, overridden_fields

import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../../packages/package.dart';



class ToStyle extends TextStyle {
   ToStyle({
    this.color = Colors.black,
    this.fontSize = 14.0,
    this.fontWeight =  FontWeight.w600,
});
@override
  final Color color ;
@override
  final double fontSize ;
@override
  final FontWeight fontWeight ;
  TextStyle build(BuildContext context) {
    return TextStyle(
      color: color == Colors.black ? GenerateDataColors.dark_neutral.toHex : color,
      fontFamily:  GenerateStyleFont.poppins ,
      fontSize: fontSize,
      fontWeight: fontWeight
    );
  }
}