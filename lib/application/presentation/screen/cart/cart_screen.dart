import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/white_container.dart';

import '../../../packages/package.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
        context: context,
        titleAppBar: context.toAppLocalization.cart,
        reActionBackIconAppBar: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '3 ${context.toAppLocalization.items}'.toText(
              context: context,
              fontSize: GenerateStyleFont.body4,
              color: GenerateDataColors.grey_neutral.toHex,
              fontWeight: FontWeight.w500,
            ),
            toSpaceVertical(context: context, size: .01),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return CartItemGenerated();
                  },
                  separatorBuilder: (context, index) {
                    return toSpaceVertical(context: context, size: .014);
                  },
                  itemCount: 3),
            ),
            WhiteContainerGenerated(
                hasShadow: true,
                child: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      context.toAppLocalization.item_total.toText(
                        context: context,
                        color: GenerateDataColors.grey_neutral.toHex,
                        fontWeight: FontWeight.w500,
                      ),
                      '\$60'.toText(
                        context: context,
                        color: GenerateDataColors.grey_neutral.toHex,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      context.toAppLocalization.shipping_fee.toText(
                        context: context,
                        color: GenerateDataColors.grey_neutral.toHex,
                        fontWeight: FontWeight.w500,
                      ),
                      '\$15'.toText(
                        context: context,
                        color: GenerateDataColors.grey_neutral.toHex,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      context.toAppLocalization.total.toText(
                        context: context,
                        color: GenerateDataColors.dark_neutral.toHex,
                        fontWeight: FontWeight.w600,
                        fontSize: GenerateStyleFont.headline2,
                      ),
                      '\$75'.toText(
                        context: context,
                        color: GenerateDataColors.dark_neutral.toHex,
                        fontWeight: FontWeight.w600,
                        fontSize: GenerateStyleFont.headline2,
                      )
                    ],
                  )
                ].toItem.toSpace(
                    context: context,
                    left: .04,
                    right: .04,
                    top: .02,
                    bottom: .02)),
            toSpaceVertical(context: context, size: .027),
            SizedBox(
              width: context.mediaQueryWidth(context),
              child: GradientButton(
                  onPressed: () {},
                  title: context.toAppLocalization.go_to_checkout),
            ),
          ],
        ).toSpace(
          context: context,
          top: .018,
          bottom: 0.02,
        ));
  }
}
