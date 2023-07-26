// ignore_for_file: prefer_const_constructors_in_immutables, overridden_fields

import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../../packages/package.dart';



class ToStyle extends TextStyle {
  ToStyle({
    this.color = Colors.black,
    this.fontFamily = 'Poppins' ,
    this.fontSize = 14.0,
    this.fontStyle = FontStyle.normal,
    this.fontWeight =  FontWeight.normal,
});
@override
  final Color color ;
@override
  final double fontSize ;
@override
  final FontWeight fontWeight ;
@override
  final FontStyle fontStyle ;
@override
  final String fontFamily ;
  TextStyle build(BuildContext context) {
    return TextStyle(
      color: color == Colors.black ? GenerateDataColors.dark_neutral.toHex : color,
      fontFamily: fontFamily == 'Poppins' ? GenerateStyleFont.poppins : fontFamily ,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight
    );
  }
}