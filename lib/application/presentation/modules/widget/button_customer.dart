// ignore_for_file: non_constant_identifier_names

import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/generateStyleFont.dart';

import '../../../packages/package.dart';

class ButtonCustomer extends StatelessWidget {
  const ButtonCustomer({super.key, required this.onPressed, required this.title , this.titleColor = Colors.orange, required this.buttonColor});
   final void Function() onPressed ;
   final String title ;
   final Color titleColor , buttonColor ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.mediaQueryWidth(context),
      height: context.mediaQueryHeight(context)*.07,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20.0)),
      child: InkWell(
        borderRadius: BorderRadius.circular(17.0),
        onTap: onPressed,
        child: Container(
          alignment: Alignment.center,
          child: title.toText(
              context: context,
              fontSize: GenerateStyleFont.headline1,
              color: titleColor == Colors.orange ? context.toTheme.colorScheme.primary : titleColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
