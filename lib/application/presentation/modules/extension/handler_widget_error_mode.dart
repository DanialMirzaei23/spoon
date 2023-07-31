
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import '../../../packages/package.dart';

class HandlerWidgetErrorMode extends OutlineInputBorder {
  const HandlerWidgetErrorMode({required this.colorBorder});
  final Color colorBorder;
  outlineInputBorder (BuildContext context) {
    return OutlineInputBorder(borderSide: BorderSide(color:colorBorder),borderRadius: BorderRadius.circular(15));
  }
}
