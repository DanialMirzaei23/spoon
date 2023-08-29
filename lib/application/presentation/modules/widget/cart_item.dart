import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';
import '../mixin/exp_main_router.dart';

class CartItemGenerated extends StatelessWidget {
  const CartItemGenerated({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WhiteContainerGenerated(
          hasShadow: true,
          child: Row(
            children: [
              Container(
                height: context.mediaQueryHeight(context) * .13,
                width: context.mediaQueryWidth(context) * .28,
                decoration: BoxDecoration(
                    color: GenerateDataColors.grey1_neutral.toHex,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(15),
                    ),
                    border: Border.all(
                        color: GenerateDataColors.white_neutral.toHex,
                        width: 4)),
                child: Icon(Icons.person_2_rounded),
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        'Chequered overshirt'.toText(
                            context: context,
                            fontSize: GenerateStyleFont.body4,
                            fontWeight: FontWeight.w500,
                            color: GenerateDataColors.dark_neutral.toHex),
                        Row(
                          children: [
                            '${context.toAppLocalization.size}: S, ${context.toAppLocalization.color}: '
                                .toText(
                                    context: context,
                                    fontSize: GenerateStyleFont.caption,
                                    color:
                                        GenerateDataColors.grey_neutral.toHex),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  color: Colors.green, shape: BoxShape.circle),
                            )
                          ],
                        ),
                      ],
                    ),
                    toSpaceVertical(context: context, size: 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        '\$30'.toText(
                            context: context,
                            fontSize: GenerateStyleFont.title2,
                            fontWeight: FontWeight.w600,
                            color: GenerateDataColors.orange1_btn.toHex),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: GenerateDataColors
                                          .orange1_btn.toHex)),
                              child: '-'.toText(
                                  context: context,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            '1'
                                .toText(
                                    context: context,
                                    fontSize: GenerateStyleFont.body6,
                                    fontWeight: FontWeight.w500)
                                .toSpace(
                                    context: context, left: .03, right: .03),
                            Container(
                              alignment: Alignment.center,
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: GenerateDataColors
                                          .orange1_btn.toHex)),
                              child: Icon(
                                Icons.add,
                                size: 13,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ).toSpace(context: context, right: .05, left: .05),
              ),
            ],
          ),
        ).toSpace(context: context, top: .01),
        Positioned(
          right: 5,
          child: Container(
            width: 23,
            height: 23,
            decoration: BoxDecoration(
              color: GenerateDataColors.red.toHex,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.clear,
              size: 14,
              color: GenerateDataColors.white_neutral.toHex,
            ),
          ),
        )
      ],
    );
  }
}
