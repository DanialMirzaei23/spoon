import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../../packages/package.dart';
import '../../modules/widget/exp_main_router.dart';
import 'dart:ui' as ui;

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
      context: context,
      titleAppBar: 'checkout',
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
      child: SingleChildScrollView(
        child: <Widget>[
          WhiteContainerGenerated(
              hasShadow: true,
              child: <Widget>[
                GenerateListTile(
                  image: GenerateDataImages.location_checkout,
                  title: context.toAppLocalization.shipping_information,
                  icon: '',
                  trailingText: context.toAppLocalization.edit,
                  onTapTrailingText: () {
                    context.navigatorPush(
                        onGenerated: onGenerateRouters.onShippingInformation);
                  },
                ),
                GenerateListTile(
                    onTapTrailingText: () {},
                    image: GenerateDataImages.icon_user_checkout,
                    title: 'Eleanor Pena',
                    icon: '',
                    trailingText: '',
                    isBold: false),
                GenerateListTile(
                    onTapTrailingText: () {},
                    image: GenerateDataImages.call_outline_checkout,
                    title: '(303) 555-0105',
                    icon: '',
                    trailingText: '',
                    isBold: false),
                GenerateListTile(
                    onTapTrailingText: () {},
                    image: GenerateDataImages.home_outline_checkout,
                    title: '4517 Washington Ave. Manchester, Kentucky 39495',
                    icon: '',
                    trailingText: ' ',
                    isBold: false),
                toSpaceVertical(context: context, size: .01),
              ].toItem),
          toSpaceVertical(context: context, size: .03),
          WhiteContainerGenerated(
            hasShadow: true,
            child: GenerateListTile(
              onTapTrailingText: () {
                context.navigatorPush(
                    onGenerated: onGenerateRouters.onPaymentMethods);
              },
              image: GenerateDataImages.wallet_colored_checkout,
              title: context.toAppLocalization.payment_method,
              icon: '',
              trailingText: context.toAppLocalization.edit,
            ),
          ),
          toSpaceVertical(context: context, size: .03),
          WhiteContainerGenerated(
            hasShadow: true,
            child: Column(
              children: [
                GenerateListTile(
                  onTapTrailingText: () {
                    generateModalBottomSheet(context,
                        title: context.toAppLocalization.promo_code,
                        child: Column(
                          children: [
                            TextFieldGenerated(
                              hasBorder: true,
                              nameField: '',
                              errText: '',
                              textEditingController:
                                  Controller.promoCodeCheckout,
                              textInputType: TextInputType.text,
                              textInputAction: TextInputAction.go,
                              titleField:
                                  context.toAppLocalization.enter_your_code,
                            ),
                            toSpaceVertical(context: context, size: .02),
                            SizedBox(
                              height: context.mediaQueryHeight(context) * .17,
                              child: CustomPaint(
                                painter: PromoCodePainter(),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              '20% OFF'.toText(
                                                  context: context,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize:
                                                      GenerateStyleFont.title2,
                                                  color: GenerateDataColors
                                                      .white_neutral.toHex),
                                              'MAX \$10.00'.toText(
                                                  context: context,
                                                  fontWeight: FontWeight.w600,
                                                  color: GenerateDataColors
                                                      .accent.toHex,
                                                  fontSize: GenerateStyleFont
                                                      .caption),
                                              Spacer(),
                                              'Black Friday'.toText(
                                                  context: context,
                                                  fontWeight: FontWeight.w600,
                                                  color: GenerateDataColors
                                                      .white_neutral.toHex,
                                                  fontSize: GenerateStyleFont
                                                      .caption),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              toSpaceVertical(
                                                  context: context, size: .005),
                                              context.toAppLocalization
                                                  .coupon_expires
                                                  .toText(
                                                      context: context,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: GenerateDataColors
                                                          .accent.toHex,
                                                      fontSize:
                                                          GenerateStyleFont
                                                              .caption),
                                              toSpaceVertical(
                                                  context: context, size: .005),
                                              '20/10'.toText(
                                                  context: context,
                                                  fontWeight: FontWeight.w600,
                                                  color: GenerateDataColors
                                                      .white_neutral.toHex,
                                                  fontSize: GenerateStyleFont
                                                      .caption),
                                              Spacer(),
                                              Row(
                                                children: [
                                                  context.toAppLocalization
                                                      .condition
                                                      .toText(
                                                          context: context,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              GenerateDataColors
                                                                  .white_neutral
                                                                  .toHex,
                                                          fontSize:
                                                              GenerateStyleFont
                                                                  .caption1),
                                                  toSpaceLine(
                                                      context: context,
                                                      size: .01),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: GenerateDataColors
                                                        .white_neutral.toHex,
                                                    size: 12,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ).toSpace(
                                    context: context,
                                    left: .12,
                                    right: .12,
                                    top: .02,
                                    bottom: .02),
                              ),
                            ),
                            toSpaceVertical(context: context, size: .02),
                            SizedBox(
                              height: context.mediaQueryHeight(context) * .17,
                              child: CustomPaint(
                                painter: PromoCodePainter(),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              'Freeship'.toText(
                                                  context: context,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize:
                                                      GenerateStyleFont.title2,
                                                  color: GenerateDataColors
                                                      .white_neutral.toHex),
                                              'MAX \$10.00'.toText(
                                                  context: context,
                                                  fontWeight: FontWeight.w600,
                                                  color: GenerateDataColors
                                                      .accent.toHex,
                                                  fontSize: GenerateStyleFont
                                                      .caption),
                                              Spacer(),
                                              'End of summer'.toText(
                                                  context: context,
                                                  fontWeight: FontWeight.w600,
                                                  color: GenerateDataColors
                                                      .white_neutral.toHex,
                                                  fontSize: GenerateStyleFont
                                                      .caption),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              toSpaceVertical(
                                                  context: context, size: .005),
                                              context.toAppLocalization
                                                  .coupon_expires
                                                  .toText(
                                                      context: context,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: GenerateDataColors
                                                          .accent.toHex,
                                                      fontSize:
                                                          GenerateStyleFont
                                                              .caption),
                                              toSpaceVertical(
                                                  context: context, size: .005),
                                              '20/10'.toText(
                                                  context: context,
                                                  fontWeight: FontWeight.w600,
                                                  color: GenerateDataColors
                                                      .white_neutral.toHex,
                                                  fontSize: GenerateStyleFont
                                                      .caption),
                                              Spacer(),
                                              Row(
                                                children: [
                                                  context.toAppLocalization
                                                      .condition
                                                      .toText(
                                                          context: context,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              GenerateDataColors
                                                                  .white_neutral
                                                                  .toHex,
                                                          fontSize:
                                                              GenerateStyleFont
                                                                  .caption1),
                                                  toSpaceLine(
                                                      context: context,
                                                      size: .01),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: GenerateDataColors
                                                        .white_neutral.toHex,
                                                    size: 12,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ).toSpace(
                                    context: context,
                                    left: .12,
                                    right: .12,
                                    top: .02,
                                    bottom: .02),
                              ),
                            ),
                          ],
                        ));
                  },
                  image: GenerateDataImages.ticket_checkout,
                  title: context.toAppLocalization.promo_code,
                  icon: '',
                  trailingText: context.toAppLocalization.add,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomPaint(
                        painter: PromoCodePainter(),
                        child: Align(
                          alignment: Alignment.center,
                          child: '20% OFF'
                              .toText(
                                context: context,
                                fontWeight: FontWeight.w700,
                                fontSize: GenerateStyleFont.body6,
                                color: GenerateDataColors.white_neutral.toHex,
                              )
                              .toSpace(context: context, top: .02, bottom: .02),
                        ),
                      ),
                    ),
                    toSpaceLine(context: context, size: .04),
                    Expanded(
                      child: CustomPaint(
                        painter: PromoCodePainter(),
                        child: Align(
                          alignment: Alignment.center,
                          child: 'Freeship'
                              .toText(
                                context: context,
                                fontWeight: FontWeight.w700,
                                fontSize: GenerateStyleFont.body6,
                                color: GenerateDataColors.white_neutral.toHex,
                              )
                              .toSpace(context: context, top: .02, bottom: .02),
                        ),
                      ),
                    ),
                  ],
                ).toSpace(context: context, left: .04, right: .04, bottom: .03),
              ],
            ),
          ),
          toSpaceVertical(context: context, size: .03),
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
                    context.toAppLocalization.free.toText(
                      context: context,
                      color: GenerateDataColors.grey_neutral.toHex,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    context.toAppLocalization.voucher.toText(
                      context: context,
                      color: GenerateDataColors.grey_neutral.toHex,
                      fontWeight: FontWeight.w500,
                    ),
                    '-\$20'.toText(
                      context: context,
                      color: GenerateDataColors.grey_neutral.toHex,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
                const Divider(),
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
                ),
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
                onPressed: () {
                  generateModalBottomSheet(
                    context,
                    title: context.toAppLocalization.password,
                    child: PinCodeGenerate(
                      validator: (code) {
                        print(code);
                        if (code == "1234") {
                          print("object");
                        }
                        return '';
                      },
                      onSave: (pass) {
                        return 'code';
                      },
                      onTap: () {},
                      textEditingController: TextEditingController(),
                     ),
                  );
                },
                title: context.toAppLocalization.place_order),
          ),
          toSpaceVertical(context: context, size: .03),
        ].toItem,
      ),
    );
  }
}
