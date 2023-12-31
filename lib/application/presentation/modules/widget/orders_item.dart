import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/white_container.dart';

class OrdersItemGenerated extends StatelessWidget {
  const OrdersItemGenerated({super.key, required this.orderStatus});
  final OrderStatusButtonGenerated orderStatus;

  @override
  Widget build(BuildContext context) {
    return WhiteContainerGenerated(
      hasShadow: true,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: '${context.toAppLocalization.order_id} : 5t38-83jd'
                    .toText(
                        context: context,
                        fontWeight: FontWeight.w500,
                        color: GenerateDataColors.grey_neutral.toHex),
              ),
              Expanded(
                flex: 0,
                child: '3 ${context.toAppLocalization.products}'.toText(
                    context: context,
                    fontWeight: FontWeight.w500,
                    color: GenerateDataColors.grey_neutral.toHex),
              ),
            ],
          ),
          toSpaceVertical(context: context, size: .015),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: GenerateDataColors.grey1_neutral.toHex),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 3,
                            color: GenerateDataColors.white_neutral.toHex),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16)),
                        color: GenerateDataColors.grey1_neutral.toHex,
                      ),
                      child: SvgGenerated(
                          generate: Generate.asset,
                          router: GenerateDataImages.wallet_drawer,
                          width: context.mediaQueryWidth(context) * .15,
                          height: context.mediaQueryWidth(context) * .15),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Chequered overshirt'.toText(
                            context: context,
                            fontWeight: FontWeight.w500,
                            color: GenerateDataColors.dark_neutral.toHex,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: '${context.toAppLocalization.size}: s'
                                    .toText(
                                        context: context,
                                        fontSize: GenerateStyleFont.caption,
                                        color: GenerateDataColors
                                            .grey_neutral.toHex),
                              ),
                              Expanded(
                                flex: 0,
                                child: '${context.toAppLocalization.color}: '
                                    .toText(
                                        context: context,
                                        fontSize: GenerateStyleFont.caption,
                                        color: GenerateDataColors
                                            .grey_neutral.toHex),
                              ),
                              Expanded(
                                flex: 0,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        GenerateDataColors.orange_primary.toHex,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: '${context.toAppLocalization.quantity}: 1'
                                .toText(
                                    context: context,
                                    fontSize: GenerateStyleFont.caption,
                                    color:
                                        GenerateDataColors.grey_neutral.toHex),
                          ),
                        ],
                      ).toSpace(context: context, left: .05, right: .05),
                    )
                  ],
                ),
              ).toSpace(context: context, bottom: .008);
            },
          ),
          Divider(
            color: GenerateDataColors.grey1_neutral.toHex,
          ).toSpace(context: context, left: .02, right: .02),
          toSpaceVertical(context: context, size: .01),
          ButtonOrderGenerated(
              onPressed: () {}, orderStatusButton: orderStatus),
        ],
      ).toSpace(context: context, top: .03, bottom: .03, right: .05, left: .05),
    ).toSpace(context: context, right: .04, left: .04, bottom: .03);
  }
}
