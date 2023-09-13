import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../../../packages/package.dart';
import '../../../../modules/widget/svg_generate.dart';

class ShippingInformationScreen extends StatelessWidget {
  const ShippingInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
        context: context,
        titleAppBar: context.toAppLocalization.shipping_information,
        reActionBackIconAppBar: () {},
        isIco: true,
        onTapActionIcon: () {},
        iconButton: SvgGenerated(
                generate: Generate.asset,
                router: GenerateDataImages.icon_setting,
                width: context.mediaQueryWidth(context) * .03,
                height: context.mediaQueryHeight(context) * .03)
            .toSpace(context: context, left: .02, right: .02),
        child: <Widget>[
          DecoratedBox(
            position: DecorationPosition.foreground,
            decoration: BoxDecoration(
                border: Border.all(
                    color: GenerateDataColors.orange_primary.toHex, width: 2),
                borderRadius: BorderRadius.circular(16)),
            child: WhiteContainerGenerated(
              hasShadow: true,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                    fillColor: MaterialStateProperty.all(
                        GenerateDataColors.orange_primary.toHex),
                  ).toSpace(context: context, bottom: .03),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: GenerateDataColors.accent.toHex,
                                    borderRadius: BorderRadius.circular(16)),
                                child: context.toAppLocalization.default0
                                    .toText(
                                        context: context,
                                        fontSize: GenerateStyleFont.caption,
                                        fontWeight: FontWeight.w500,
                                        color: GenerateDataColors
                                            .orange_primary.toHex)
                                    .toSpace(
                                        context: context,
                                        left: .02,
                                        right: .02,
                                        top: .003,
                                        bottom: .003),
                              ),
                              'Arlene McCoy'.toText(
                                  context: context,
                                  fontWeight: FontWeight.w600,
                                  fontSize: GenerateStyleFont.body6,
                                  color: GenerateDataColors.dark_neutral.toHex),
                              '(303) 555-0105'.toText(
                                  context: context,
                                  fontWeight: FontWeight.w500,
                                  fontSize: GenerateStyleFont.body6,
                                  color: GenerateDataColors.dark_neutral.toHex),
                              '4517 Washington Ave. Manchester, Kentucky 39495'
                                  .toText(
                                      context: context,
                                      fontWeight: FontWeight.w400,
                                      fontSize: GenerateStyleFont.body4,
                                      color: GenerateDataColors
                                          .grey_neutral.toHex),
                            ],
                          ),
                        ),
                        toSpaceLine(context: context),
                        context.toAppLocalization.edit
                            .toText(
                                context: context,
                                fontSize: GenerateStyleFont.caption,
                                fontWeight: FontWeight.w400,
                                color: GenerateDataColors.orange_primary.toHex)
                            .generateButton(
                              onTap: () {},
                            )
                      ],
                    ),
                  ),
                ],
              ).toSpace(
                  context: context,
                  left: .03,
                  right: .03,
                  top: .02,
                  bottom: .02),
            ),
          ),
          toSpaceVertical(context: context, size: .02),
          DecoratedBox(
            position: DecorationPosition.foreground,
            decoration: BoxDecoration(
                // border: Border.all(
                //     color: GenerateDataColors.orange_primary.toHex, width: 2),
                // borderRadius: BorderRadius.circular(16),
                ),
            child: WhiteContainerGenerated(
              hasShadow: true,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio(
                    value: 2,
                    groupValue: 1,
                    onChanged: (value) {},
                    fillColor: MaterialStateProperty.all(
                        GenerateDataColors.orange_primary.toHex),
                  ).toSpace(context: context, bottom: .03),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              'Arlene McCoy'.toText(
                                  context: context,
                                  fontWeight: FontWeight.w600,
                                  fontSize: GenerateStyleFont.body6,
                                  color: GenerateDataColors.dark_neutral.toHex),
                              '(303) 555-0105'.toText(
                                  context: context,
                                  fontWeight: FontWeight.w500,
                                  fontSize: GenerateStyleFont.body6,
                                  color: GenerateDataColors.dark_neutral.toHex),
                              '4517 Washington Ave. Manchester, Kentucky 39495'
                                  .toText(
                                      context: context,
                                      fontWeight: FontWeight.w400,
                                      fontSize: GenerateStyleFont.body4,
                                      color: GenerateDataColors
                                          .grey_neutral.toHex),
                            ],
                          ),
                        ),
                        toSpaceLine(context: context),
                        context.toAppLocalization.edit
                            .toText(
                                context: context,
                                fontSize: GenerateStyleFont.caption,
                                fontWeight: FontWeight.w400,
                                color: GenerateDataColors.orange_primary.toHex)
                            .generateButton(
                              onTap: () {},
                            )
                      ],
                    ),
                  ),
                ],
              ).toSpace(
                  context: context,
                  left: .03,
                  right: .03,
                  top: .02,
                  bottom: .02),
            ),
          ),
          toSpaceVertical(context: context, size: .02),
          DecoratedBox(
            position: DecorationPosition.foreground,
            decoration: BoxDecoration(
                // border: Border.all(
                //     color: GenerateDataColors.orange_primary.toHex, width: 2),
                // borderRadius: BorderRadius.circular(16),
                ),
            child: WhiteContainerGenerated(
              hasShadow: true,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                    fillColor: MaterialStateProperty.all(
                        GenerateDataColors.orange_primary.toHex),
                  ).toSpace(context: context, bottom: .03),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              'Arlene McCoy'.toText(
                                  context: context,
                                  fontWeight: FontWeight.w600,
                                  fontSize: GenerateStyleFont.body6,
                                  color: GenerateDataColors.dark_neutral.toHex),
                              '(303) 555-0105'.toText(
                                  context: context,
                                  fontWeight: FontWeight.w500,
                                  fontSize: GenerateStyleFont.body6,
                                  color: GenerateDataColors.dark_neutral.toHex),
                              '4517 Washington Ave. Manchester, Kentucky 39495'
                                  .toText(
                                      context: context,
                                      fontWeight: FontWeight.w400,
                                      fontSize: GenerateStyleFont.body4,
                                      color: GenerateDataColors
                                          .grey_neutral.toHex),
                            ],
                          ),
                        ),
                        toSpaceLine(context: context),
                        context.toAppLocalization.edit
                            .toText(
                                context: context,
                                fontSize: GenerateStyleFont.caption,
                                fontWeight: FontWeight.w400,
                                color: GenerateDataColors.orange_primary.toHex)
                            .generateButton(
                              onTap: () {},
                            )
                      ],
                    ),
                  ),
                ],
              ).toSpace(
                  context: context,
                  left: .03,
                  right: .03,
                  top: .02,
                  bottom: .02),
            ),
          ),
        ].toItem);
  }
}
