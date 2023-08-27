
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../packages/package.dart';

// class  extends OutlineInputBorder {
//   const HandlerWidgetErrorMode({required this.colorBorder});
//   final Color colorBorder;
//   outlineInputBorder (BuildContext context) {
//     return OutlineInputBorder(borderSide: BorderSide(color:colorBorder),borderRadius: BorderRadius.circular(15));
//   }
// }
extension GenerateErrorMode on BuildContext {
  InputBorder handlerWidgetErrorMode({required Color colorBorder}) =>
      OutlineInputBorder(
          borderSide: BorderSide(color: colorBorder,width: 2),
          borderRadius: BorderRadius.circular(15));
  TextStyle handlerWidgetErrorModeText({required Color colorBorder}) =>
      ToStyle(fontSize: GenerateStyleFont.caption,color:colorBorder) ;
}


