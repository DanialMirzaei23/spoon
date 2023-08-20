import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';

class BoxHome extends StatelessWidget {
  const BoxHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: context.mediaQueryHeight(context) * .2,
      decoration: BoxDecoration(
          color: GenerateDataColors.pale_pink.toHex,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: SvgGenerated(
                  generate: Generate.image,
                  router: GenerateDataImages.image_box,
                  width: context.mediaQueryWidth(context) * .01,
                  height: context.mediaQueryHeight(context))),
          Expanded(
              child: [
            toSpaceVertical(context: context, size: .03),
            context.toAppLocalization.beautiful_clothes.toText(
                context: context,
                color: GenerateDataColors.orange1_btn.toHex,
                fontSize: GenerateStyleFont.body6,
                fontWeight: FontWeight.bold),
            toSpaceVertical(context: context, size: .02),
            context.toAppLocalization.the_joy_of_premium_fashion.toText(
                context: context,
                color: GenerateDataColors.orange1_btn.toHex,
                fontSize: GenerateStyleFont.caption1,
                fontWeight: FontWeight.w700),
            toSpaceVertical(context: context, size: .03),
            Container(
              height: 40,
              child: "Buy Now".toText(
                  context: context,
                  color: GenerateDataColors.orange_primary.toHex,
                  fontWeight: FontWeight.w800),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: GenerateDataColors.white_neutral.toHex),
            ).generateButton(onTap: () {
              print("Buy Now");
            }).toSpace(context: context, left: .12, right: .05)
          ].toItem),
        ],
      ),
    );
  }
}
