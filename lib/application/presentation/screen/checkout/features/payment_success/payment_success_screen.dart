import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/svg_generate.dart';

import '../../../../../packages/package.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.toTheme.colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          SvgGenerated(
              generate: Generate.asset,
              router: GenerateDataImages.payment_success_checkout,
              width: 0,
              height: context.mediaQueryHeight(context) * .25),
          toSpaceVertical(context: context, size: .05),
          context.toAppLocalization.payment_success.toText(
              context: context,
              fontSize: GenerateStyleFont.headline1,
              color: GenerateDataColors.dark_neutral.toHex,
              fontWeight: FontWeight.w600),
          Spacer(),
          SizedBox(
            width: context.mediaQueryWidth(context),
            child: GradientButton(
                onPressed: () {},
                title: context.toAppLocalization.back_to_home),
          ),
          toSpaceVertical(context: context, size: .01),
        ],
      ).toSpaceAll(context: context, value: .03),
    );
  }
}
