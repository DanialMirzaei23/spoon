import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../../../packages/package.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgGenerated(
              generate: Generate.asset,
              router: GenerateDataImages.cart_shop,
              width: context.mediaQueryWidth(context) * .3,
              height: context.mediaQueryHeight(context) * .3),
          toSpaceVertical(context: context, size: .02),
          context.toAppLocalization.theres_no_product_yet.toText(
              context: context,
              color: GenerateDataColors.dark_neutral.toHex,
              fontWeight: FontWeight.bold,
              fontSize: GenerateStyleFont.body6)
        ],
      ),
    ).toSpace(context: context,top: .1);
  }
}
