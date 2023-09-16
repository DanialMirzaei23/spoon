import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/modal_bottom_sheet.dart';

import '../../../../modules/mixin/exp_main_router.dart';
import '../../../../modules/widget/exp_main_router.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.paymentMethodsScaffold(
      context: context,
      titleAppBar: context.toAppLocalization.payment_methods,
      reActionBackIconAppBar: () {
        print("Icon Back Button");
      },
      onTapActionIcon: () {
        print("Icon Butoon");
      },
      isIco: true,
      iconButton: SvgGenerated(
              generate: Generate.asset,
              router: GenerateDataImages.icon_setting,
              width: context.mediaQueryWidth(context) * .03,
              height: context.mediaQueryHeight(context) * .03)
          .toSpace(context: context, left: .02, right: .02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              WhiteContainerGenerated(
                child: SizedBox(
                  height: context.mediaQueryHeight(context) * .4,
                  width: context.mediaQueryWidth(context) * .9,
                ),
              ),
              SizedBox(
                height: context.mediaQueryHeight(context) * .26,
                child: PageView.builder(
                    itemCount: 3,
                    controller:
                        PageController(initialPage: 1, viewportFraction: .8),
                    itemBuilder: (context, index) {
                      bool isActive = index == 1;
                      return Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            GenerateDataColors.wormy_primary.toHex,
                            GenerateDataColors.orange_primary.toHex,
                          ]),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 8,
                                offset: Offset(2, 7),
                                spreadRadius: 0,
                                color: GenerateDataColors.grey1_neutral.toHex),
                          ],
                          border: Border.all(
                            color: GenerateDataColors.orange_primary.toHex,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ).toSpace(
                          context: context,
                          left: .025,
                          right: .025,
                          top: isActive ? .02 : .03,
                          bottom: isActive ? .02 : .03);
                    }),
              ),
              Positioned(
                top: 20,
                height: 26,
                width: context.mediaQueryWidth(context) * .74,
                child: Row(
                  children: [
                    SvgGenerated(
                        generate: Generate.asset,
                        router: GenerateDataImages.card_checkout,
                        width: 0,
                        height: 15),
                    toSpaceLine(context: context, size: .03),
                    context.toAppLocalization.credit_cards.toText(
                      context: context,
                      color: GenerateDataColors.dark_neutral.toHex,
                      fontSize: GenerateStyleFont.body6,
                      fontWeight: FontWeight.w600,
                    ),
                    Spacer(),
                    SvgGenerated(
                        generate: Generate.asset,
                        router: GenerateDataImages.arrow_up_checkout,
                        width: 0,
                        height: 20)
                  ],
                ),
              ),
              Positioned(
                  bottom: 20,
                  child: Container(
                    alignment: Alignment.center,
                    width: context.mediaQueryWidth(context) * .7,
                    height: context.mediaQueryHeight(context) * .052,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: GenerateDataColors.wormy_primary.toHex),
                    child: '+  ${context.toAppLocalization.add_card}'.toText(
                        context: context,
                        color: GenerateDataColors.orange_primary.toHex,
                        fontWeight: FontWeight.w500),
                  ).generateButton(
                    onTap: () {
                      generateModalBottomSheet(context,
                          title: context.toAppLocalization.add_new_card,
                          child: Column(
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: GenerateDataColors
                                          .grey1_neutral.toHex,
                                    ),
                                    borderRadius: BorderRadius.circular(16)),
                                child: DropdownButton(
                                  isExpanded: true,
                                  icon: SvgGenerated(
                                      generate: Generate.asset,
                                      router: GenerateDataImages
                                          .arrow_down_checkout,
                                      width: 0,
                                      height: 20),
                                  items: [
                                    DropdownMenuItem(
                                        child: Row(
                                      children: [
                                        SvgGenerated(
                                            generate: Generate.asset,
                                            router: GenerateDataImages
                                                .card_logo_checkout,
                                            width: 0,
                                            height: 15),
                                        toSpaceLine(
                                            context: context, size: .02),
                                        'MasterCard'.toText(
                                            context: context,
                                            fontWeight: FontWeight.w500,
                                            color: GenerateDataColors
                                                .dark_neutral.toHex)
                                      ],
                                    ))
                                  ],
                                  onChanged: (value) {},
                                ).toSpace(
                                    context: context, left: .05, right: .05),
                              ),
                              TextFieldGenerated(
                                  hasBorder: true,
                                  nameField:
                                      context.toAppLocalization.name_on_card,
                                  errText: '',
                                  textEditingController:
                                      Controller.nameOnCardAddCheckout,
                                  textInputType: TextInputType.name,
                                  textInputAction: TextInputAction.next,
                                  titleField: ''),
                              TextFieldGenerated(
                                  hasBorder: true,
                                  nameField:
                                      context.toAppLocalization.card_number,
                                  errText: '',
                                  textEditingController:
                                      Controller.cardNumberAddCheckout,
                                  textInputType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  titleField: ''),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFieldGenerated(
                                      nameField:
                                          context.toAppLocalization.expire_date,
                                      errText: '',
                                      textEditingController:
                                          Controller.expireDateAddCheckout,
                                      textInputType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                      titleField: '',
                                      hasBorder: true,
                                    ),
                                  ),
                                  toSpaceLine(context: context),
                                  Expanded(
                                    child: TextFieldGenerated(
                                      nameField: context.toAppLocalization.cvv,
                                      errText: '',
                                      textEditingController:
                                          Controller.cvvAddCheckout,
                                      textInputType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      titleField: '',
                                      hasBorder: true,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Switch(
                                    value: false,
                                    inactiveThumbColor:
                                        GenerateDataColors.white_neutral.toHex,
                                    onChanged: (value) {},
                                  ),
                                  toSpaceLine(context: context, size: .03),
                                  Expanded(
                                    child: context.toAppLocalization
                                        .save_this_card_for_future_payment
                                        .toText(
                                            context: context,
                                            color: GenerateDataColors
                                                .grey_neutral.toHex,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              toSpaceVertical(context: context, size: .03),
                              SizedBox(
                                width: context.mediaQueryWidth(context),
                                child: GradientButton(
                                    onPressed: () {},
                                    title: context.toAppLocalization.add_card),
                              )
                            ],
                          ));
                    },
                  )),
            ],
          ).toSpace(context: context, top: .03, bottom: .03),
          WhiteContainerGenerated(
            child: Row(
              children: [
                SvgGenerated(
                    generate: Generate.asset,
                    router: GenerateDataImages.paypal_checkout,
                    width: 0,
                    height: 20),
                toSpaceLine(context: context, size: .03),
                context.toAppLocalization.paypal.toText(context: context),
                Spacer(),
                SvgGenerated(
                    generate: Generate.asset,
                    router: GenerateDataImages.arrow_down_checkout,
                    width: 0,
                    height: 20)
              ],
            ).toSpaceAll(context: context, value: .04),
          ).toSpace(context: context, left: .03, right: .03),
          toSpaceVertical(context: context, size: .03),
          WhiteContainerGenerated(
            child: Row(
              children: [
                SvgGenerated(
                    generate: Generate.asset,
                    router: GenerateDataImages.google_logo_checkout,
                    width: 0,
                    height: 20),
                toSpaceLine(context: context, size: .03),
                context.toAppLocalization.google_pay.toText(context: context),
                Spacer(),
                SvgGenerated(
                    generate: Generate.asset,
                    router: GenerateDataImages.arrow_down_checkout,
                    width: 0,
                    height: 20),
              ],
            ).toSpaceAll(context: context, value: .04),
          ).toSpace(context: context, left: .03, right: .03),
          Spacer(),
          SizedBox(
            width: context.mediaQueryWidth(context) * .91,
            child: GradientButton(
                onPressed: () {}, title: context.toAppLocalization.checkout),
          ).toSpace(context: context, bottom: .03)
        ],
      ),
    );
  }
}
