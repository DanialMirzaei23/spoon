import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/white_container.dart';

class OrderStatusScreen extends StatelessWidget {
  const OrderStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
      context: context,
      titleAppBar: context.toAppLocalization.my_orders,
      reActionIconAppBar: () => print('object'),
      child: SizedBox(
        width: context.mediaQueryWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    OrderStatusStepGenerated(
                        date: '19 July',
                        title: context.toAppLocalization.order_placed,
                        description: 'We have recived your order on 19 July',
                        orderStatusStep: GeneratedOrderStatusStep.done),
                    OrderStatusStepGenerated(
                        date: '19 July',
                        title: context.toAppLocalization.order_confirmed,
                        description: 'we have been confirmed on 12:12 19 July',
                        orderStatusStep: GeneratedOrderStatusStep.done),
                    OrderStatusStepGenerated(
                        date: '19 July',
                        title: context.toAppLocalization.order_processed,
                        description: 'we are preparing your order',
                        orderStatusStep: GeneratedOrderStatusStep.processing),
                    OrderStatusStepGenerated(
                        date: '',
                        title: context.toAppLocalization.ready_to_ship,
                        description: 'Your order is ready for shipping',
                        orderStatusStep: GeneratedOrderStatusStep.notActive),
                    OrderStatusStepGenerated(
                        date: '',
                        title: context.toAppLocalization.out_to_delivery,
                        description: 'Your order is out for delivery',
                        orderStatusStep: GeneratedOrderStatusStep.notActive,
                        isLastStep: true),

                    // Column(
                    //   children: [
                    //     '19 July'.toText(
                    //         context: context,
                    //         fontWeight: FontWeight.w500,
                    //         fontSize: GenerateStyleFont.caption,
                    //         color: GenerateDataColors.grey_neutral.toHex),
                    //   ],
                    // ),
                    // toSpaceLine(context: context),
                    // Column(
                    //   children: [
                    //     Container(
                    //       width: 16,
                    //       height: 16,
                    //       decoration: BoxDecoration(
                    //         color: GenerateDataColors.orange1_btn.toHex,
                    //         shape: BoxShape.circle,
                    //       ),
                    //     ),
                    //     Container(
                    //       width: 2,
                    //       height: 84,
                    //       decoration: BoxDecoration(
                    //           color: GenerateDataColors.orange1_btn.toHex),
                    //     ),
                    //   ],
                    // ),
                    // toSpaceLine(context: context),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     context.toAppLocalization.order_placed.toText(
                    //       context: context,
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: GenerateStyleFont.headline1,
                    //       color: GenerateDataColors.dark_neutral.toHex,
                    //     ),
                    //     toSpaceVertical(context: context, size: .005),
                    //     'We have received your order\non 19 July'.toText(
                    //       context: context,
                    //       fontWeight: FontWeight.w500,
                    //       color: GenerateDataColors.grey_neutral.toHex,
                    //       fontSize: GenerateStyleFont.body6,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            WhiteContainerGenerated(
              hasShadow: true,
              child: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    '${context.toAppLocalization.order_id}:'.toText(
                        context: context,
                        color: GenerateDataColors.grey_neutral.toHex,
                        fontSize: GenerateStyleFont.body6,
                        fontWeight: FontWeight.w500),
                    '5t36-8j4s'.toText(
                        context: context,
                        color: GenerateDataColors.grey_neutral.toHex,
                        fontSize: GenerateStyleFont.body6,
                        fontWeight: FontWeight.w500),
                  ],
                ),
                toSpaceVertical(context: context, size: .01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    '${context.toAppLocalization.purchase_date}:'.toText(
                        context: context,
                        color: GenerateDataColors.grey_neutral.toHex,
                        fontSize: GenerateStyleFont.body6,
                        fontWeight: FontWeight.w500),
                    '19 July'.toText(
                        context: context,
                        color: GenerateDataColors.grey_neutral.toHex,
                        fontSize: GenerateStyleFont.body6,
                        fontWeight: FontWeight.w500),
                  ],
                ),
              ].toItem.toSpace(
                  context: context,
                  left: .05,
                  right: .05,
                  top: .027,
                  bottom: .027),
            ).toSpace(context: context, left: .04, right: .04, bottom: .025),
            SizedBox(
              width: context.mediaQueryWidth(context),
              height: context.mediaQueryHeight(context) * .07,
              child: GradientButton(
                onPressed: () {},
                title: context.toAppLocalization.track_order,
              ),
            ).toSpace(context: context, right: .04, left: .04),
          ],
        ).toSpace(context: context, top: .02, bottom: .02),
      ),
    );
  }
}
