import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          width: context.mediaQueryWidth(context) * .18,
          height: context.mediaQueryHeight(context) * .09,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: context.toTheme.colorScheme.onPrimary,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20.0)),
          child: SvgGenerated(
              generate: Generate.asset,
              router: GenerateDataImages.logo_onboarding,
              width: context.mediaQueryWidth(context) * .06,
              height: context.mediaQueryHeight(context) * .06),
        ));
  }
}
