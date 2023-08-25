import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import '../../../packages/package.dart';

class FloatingAction extends StatelessWidget {
  final Function() onTap;
  final Widget child;
   const FloatingAction({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: context.mediaQueryWidth(context)*.19,
      height: context.mediaQueryHeight(context)*.08,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 1),
              blurRadius: 2.0,
            ),
          ],
          gradient: context.toTheme.extension<GradientExtension>()?.primaryGradient,
          borderRadius: BorderRadius.circular(20.0)),
      child: InkWell(
      borderRadius: BorderRadius.circular(20.0),
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child:child,
      ),
        ),
    );
  }
}
