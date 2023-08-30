import 'package:flutter/material.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

enum GeneratedOrderStatusStep { done, processing, notActive }

class OrderStatusStepGenerated extends StatelessWidget {
  const OrderStatusStepGenerated(
      {super.key,
      required this.date,
      required this.title,
      required this.description,
      required this.orderStatusStep,
      this.isLastStep = false});
  final String date, title, description;
  final GeneratedOrderStatusStep orderStatusStep;
  final bool isLastStep;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: context.mediaQueryWidth(context) *
                (orderStatusStep == GeneratedOrderStatusStep.processing
                    ? .137
                    : .15),
            child: date.toText(
                context: context,
                fontWeight: FontWeight.w500,
                fontSize: GenerateStyleFont.caption,
                color: GenerateDataColors.grey_neutral.toHex),
          ),
          // toSpaceLine(
          //     context: context,
          //     size: orderStatusStep == GeneratedOrderStatusStep.processing
          //         ? .037
          //         : .05),
          Column(
            children: [
              Container(
                padding: orderStatusStep == GeneratedOrderStatusStep.processing
                    ? const EdgeInsets.all(4)
                    : EdgeInsets.zero,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: GenerateDataColors.orange1_btn.toHex,
                      width:
                          orderStatusStep == GeneratedOrderStatusStep.processing
                              ? 1
                              : 0),
                ),
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: orderStatusStep == GeneratedOrderStatusStep.notActive
                        ? GenerateDataColors.grey_neutral.toHex
                        : GenerateDataColors.orange1_btn.toHex,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: 2,
                  height: isLastStep ? 0 : null,
                  decoration: BoxDecoration(
                      color: orderStatusStep == GeneratedOrderStatusStep.done
                          ? GenerateDataColors.orange1_btn.toHex
                          : GenerateDataColors.grey_neutral.toHex),
                ),
              ),
            ],
          ),
          toSpaceLine(context: context),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title.toText(
                  context: context,
                  fontWeight: FontWeight.w500,
                  fontSize: GenerateStyleFont.headline1,
                  color: GenerateDataColors.dark_neutral.toHex,
                ),
                toSpaceVertical(context: context, size: .005),
                description.toText(
                  context: context,
                  fontWeight: FontWeight.w500,
                  color: GenerateDataColors.grey_neutral.toHex,
                  fontSize: GenerateStyleFont.body6,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
