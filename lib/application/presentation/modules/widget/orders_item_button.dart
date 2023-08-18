// ignore_for_file: non_constant_identifier_names

import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../packages/package.dart';

enum OrderStatusButtonGenerated { processing, delivered, failed }

class ButtonOrderGenerated extends StatelessWidget {
  const ButtonOrderGenerated(
      {super.key, required this.onPressed, required this.orderStatusButton});
  final void Function() onPressed;
  final OrderStatusButtonGenerated orderStatusButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.mediaQueryWidth(context),
      height: context.mediaQueryHeight(context) * .07,
      decoration: BoxDecoration(
          color: orderStatusButton == OrderStatusButtonGenerated.processing
              ? GenerateDataColors.accent.toHex
              : GenerateDataColors.grey1_neutral.toHex,
          borderRadius: BorderRadius.circular(20.0)),
      child: InkWell(
        borderRadius: BorderRadius.circular(17.0),
        onTap: onPressed,
        child: Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color:
                      orderStatusButton == OrderStatusButtonGenerated.processing
                          ? GenerateDataColors.orange1_btn.toHex
                          : GenerateDataColors.grey_neutral.toHex,
                  shape: BoxShape.circle,
                ),
              ),
              toSpaceLine(context: context, size: .03),
              orderStatusButton == OrderStatusButtonGenerated.processing
                  ? context.toAppLocalization.processing.toText(
                      context: context,
                      fontSize: GenerateStyleFont.body4,
                      color: GenerateDataColors.orange_primary.toHex,
                      fontWeight: FontWeight.w500)
                  : context.toAppLocalization.delivered.toText(
                      context: context,
                      fontSize: GenerateStyleFont.body4,
                      color: GenerateDataColors.grey_neutral.toHex,
                      fontWeight: FontWeight.w500),
              const Spacer(),
              if (orderStatusButton ==
                  OrderStatusButtonGenerated.processing) ...{
                SvgGenerated(
                    generate: Generate.asset,
                    router: GenerateDataImages.arrow_right,
                    width: context.mediaQueryWidth(context) * .03,
                    height: context.mediaQueryHeight(context) * .03)
              },
            ],
          ),
        ).toSpace(context: context, left: .06, right: .06),
      ),
    );
  }
}
