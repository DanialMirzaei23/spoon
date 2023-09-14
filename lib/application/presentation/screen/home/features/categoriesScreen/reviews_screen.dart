import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../../../packages/package.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
      context: context,
      titleAppBar: context.toAppLocalization.reviews,
      reActionBackIconAppBar: () {},
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: context.mediaQueryWidth(context) * .32,
                    height: context.mediaQueryWidth(context) * .32,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: GenerateDataColors.orange_primary.toHex,
                        )),
                    child: '4,9'.toText(
                        context: context,
                        fontWeight: FontWeight.w600,
                        fontSize: GenerateStyleFont.title4,
                        color: GenerateDataColors.orange_primary.toHex),
                  ),
                  toSpaceVertical(context: context, size: .015),
                  SizedBox(
                    height: 20,
                    child: ListView.builder(
                      itemCount: 5,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SvgGenerated(
                              generate: Generate.asset,
                              router: GenerateDataImages.star_on_feedback,
                              width: 16,
                              height: 16)
                          .toSpace(context: context, right: .01),
                    ),
                  ),
                ],
              ),
              toSpaceLine(context: context, size: .12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        '5.0'.toText(
                            context: context,
                            color: GenerateDataColors.orange_primary.toHex,
                            fontSize: GenerateStyleFont.body4,
                            fontWeight: FontWeight.w600),
                        toSpaceLine(context: context, size: .03),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  color: GenerateDataColors.white_neutral.toHex,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  color:
                                      GenerateDataColors.orange_primary.toHex,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ).toSpace(context: context, right: .1)
                            ],
                          ),
                        ),
                      ],
                    ),
                    toSpaceVertical(context: context, size: .005),
                    Row(
                      children: [
                        '4.0'.toText(
                            context: context,
                            color: GenerateDataColors.orange_primary.toHex,
                            fontSize: GenerateStyleFont.body4,
                            fontWeight: FontWeight.w600),
                        toSpaceLine(context: context, size: .03),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  color: GenerateDataColors.white_neutral.toHex,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  color:
                                      GenerateDataColors.orange_primary.toHex,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ).toSpace(context: context, right: .3)
                            ],
                          ),
                        ),
                      ],
                    ),
                    toSpaceVertical(context: context, size: .005),
                    Row(
                      children: [
                        '3.0'.toText(
                            context: context,
                            color: GenerateDataColors.orange_primary.toHex,
                            fontSize: GenerateStyleFont.body4,
                            fontWeight: FontWeight.w600),
                        toSpaceLine(context: context, size: .03),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  color: GenerateDataColors.white_neutral.toHex,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  color:
                                      GenerateDataColors.orange_primary.toHex,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ).toSpace(context: context, right: .2)
                            ],
                          ),
                        ),
                      ],
                    ),
                    toSpaceVertical(context: context, size: .005),
                    Row(
                      children: [
                        '2.0'.toText(
                            context: context,
                            color: GenerateDataColors.orange_primary.toHex,
                            fontSize: GenerateStyleFont.body4,
                            fontWeight: FontWeight.w600),
                        toSpaceLine(context: context, size: .03),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  color: GenerateDataColors.white_neutral.toHex,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  color:
                                      GenerateDataColors.orange_primary.toHex,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ).toSpace(context: context, right: .2)
                            ],
                          ),
                        ),
                      ],
                    ),
                    toSpaceVertical(context: context, size: .005),
                    Row(
                      children: [
                        '1.0'.toText(
                            context: context,
                            color: GenerateDataColors.orange_primary.toHex,
                            fontSize: GenerateStyleFont.body4,
                            fontWeight: FontWeight.w600),
                        toSpaceLine(context: context, size: .03),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  color: GenerateDataColors.white_neutral.toHex,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  color:
                                      GenerateDataColors.orange_primary.toHex,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ).toSpace(context: context, right: .2)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          toSpaceVertical(context: context, size: .035),
          SizedBox(
            height: context.mediaQueryHeight(context) * .05,
            child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: GenerateDataColors.white_neutral.toHex,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: 'All (12)'
                    .toText(
                      context: context,
                      color: GenerateDataColors.grey_neutral.toHex,
                      fontSize: GenerateStyleFont.body4,
                      fontWeight: FontWeight.w500,
                    )
                    .toSpace(
                        context: context,
                        left: .06,
                        right: .06,
                        bottom: .01,
                        top: .01),
              ).toSpace(context: context, right: .05),
            ),
          ),
          toSpaceVertical(context: context, size: .027),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => WhiteContainerGenerated(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          child: ListView.builder(
                            itemCount: 5,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => SvgGenerated(
                                    generate: Generate.asset,
                                    router: GenerateDataImages.star_on_feedback,
                                    width: 16,
                                    height: 16)
                                .toSpace(context: context, right: .01),
                          ),
                        ),
                        toSpaceLine(context: context, size: .03),
                        '4.0'.toText(
                            context: context,
                            fontSize: GenerateStyleFont.body4,
                            fontWeight: FontWeight.w600,
                            color: GenerateDataColors.dark_neutral.toHex),
                        Spacer(),
                        SvgGenerated(
                                generate: Generate.asset,
                                router: GenerateDataImages.threeDot,
                                width: 0,
                                height: 4)
                            .generateButton(
                          onTap: () {},
                        ),
                      ],
                    ),
                    toSpaceVertical(context: context, size: .01),
                    'Love this very form fitting and flattering'.toText(
                        context: context,
                        fontSize: GenerateStyleFont.body4,
                        fontWeight: FontWeight.w500,
                        color: GenerateDataColors.dark_neutral.toHex),
                    toSpaceVertical(context: context, size: .01),
                    'M*** ****g'.toText(
                        context: context,
                        fontSize: GenerateStyleFont.caption,
                        fontWeight: FontWeight.w400,
                        color: GenerateDataColors.grey_neutral.toHex),
                    toSpaceVertical(context: context, size: .01),
                    SizedBox(
                      height: context.mediaQueryHeight(context) * .08,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => SvgGenerated(
                                generate: Generate.image,
                                router: GenerateDataImages.card,
                                width: context.mediaQueryHeight(context) * .08,
                                height: 0)
                            .toSpace(context: context, right: .02),
                      ),
                    ),
                    toSpaceVertical(context: context, size: .01),
                    Row(
                      children: [
                        '${context.toAppLocalization.size}: s, '.toText(
                            context: context,
                            fontSize: GenerateStyleFont.caption,
                            color: GenerateDataColors.grey_neutral.toHex,
                            fontWeight: FontWeight.w500),
                        '${context.toAppLocalization.color}: '.toText(
                            context: context,
                            fontSize: GenerateStyleFont.caption,
                            color: GenerateDataColors.grey_neutral.toHex,
                            fontWeight: FontWeight.w500),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                  ],
                ).toSpace(
                    context: context,
                    right: .05,
                    left: .05,
                    top: .02,
                    bottom: .02),
              ).toSpace(context: context, bottom: .02),
            ),
          )
        ],
      ),
    );
  }
}
