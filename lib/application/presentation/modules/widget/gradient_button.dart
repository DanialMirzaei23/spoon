import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import '../mixin/exp_main_router.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final Function()? onPressed;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.mediaQueryWidth(context)*.3,
      height: context.mediaQueryHeight(context)*.06,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 1),
              blurRadius: 2.0,
            ),
          ],
          gradient: context.toTheme.extension<GradientExtension>()?.primaryGradient,
          borderRadius: BorderRadius.circular(17.0)),
      child: InkWell(
        borderRadius: BorderRadius.circular(17.0),
        onTap: onPressed,
        child: Container(
          alignment: Alignment.center,
          child: title?.toText(
              context: context,
              color: context.toTheme.colorScheme.onPrimary,
              fontSize: GenerateStyleFont.body6,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
