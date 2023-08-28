import 'package:flutter/gestures.dart';
import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../exp_main_router.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  final bool isDescriptionMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ProductAlbumCounterBloc, ProductAlbumCounterState>(
          builder: (context, state) {
            return SizedBox(
              width: context.mediaQueryWidth(context),
              height: context.mediaQueryHeight(context),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView.builder(
                    itemCount: 3,
                    onPageChanged: (value) {
                      LogicBloc.productAlbumCounterBloc.add(
                          ProductAlbumCounterEvent(productAlbomCounter: value));
                    },
                    itemBuilder: (context, index) => Image.asset(
                      GenerateDataImages.product_model,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    width: context.mediaQueryWidth(context),
                    top: context.mediaQueryHeight(context) * .04,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: context.toTheme.colorScheme.onPrimary,
                              borderRadius: BorderRadius.circular(10)),
                          child: SvgGenerated(
                                  generate: Generate.asset,
                                  router: GenerateDataImages.arrow_left,
                                  width: context.mediaQueryWidth(context) * .03,
                                  height:
                                      context.mediaQueryHeight(context) * .03)
                              .toSpace(
                                  context: context,
                                  left: .01,
                                  right: .01,
                                  top: .005,
                                  bottom: .005),
                        )
                            .generateButton(
                              onTap: () {},
                            )
                            .toSpace(
                              context: context,
                              top: .01,
                              bottom: .01,
                              left: .03,
                            ),
                        Container(
                          decoration: BoxDecoration(
                              color: context.toTheme.colorScheme.onPrimary,
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(15))),
                          child: SvgGenerated(
                                  generate: Generate.asset,
                                  router: GenerateDataImages.product_favorite,
                                  width: context.mediaQueryWidth(context) * .03,
                                  height:
                                      context.mediaQueryHeight(context) * .03)
                              .toSpace(
                                  context: context,
                                  left: .04,
                                  right: .04,
                                  top: .014,
                                  bottom: .014),
                        ).generateButton(
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: <Widget>[
                      Container(
                        alignment: Alignment.topCenter,
                        transformAlignment: Alignment.center,
                        width: context.mediaQueryWidth(context) * .15,
                        height: context.mediaQueryHeight(context) * .01,
                        child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return index ==
                                    LogicBloc.productAlbumCounterBloc.state
                                        .albumCounter
                                ? Container(
                                    width: 11,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        color: GenerateDataColors
                                            .orange1_btn.toHex,
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  )
                                : Container(
                                    width: 6,
                                    height: 6,
                                    decoration: BoxDecoration(
                                        color: GenerateDataColors
                                            .wormy_primary.toHex,
                                        shape: BoxShape.circle),
                                  ).toSpace(
                                    context: context, left: .008, right: .008);
                          },
                          itemCount: 3,
                          separatorBuilder: (BuildContext context, int index) {
                            return toSpaceLine(context: context, size: 0.01);
                          },
                        ),
                      ),
                      toSpaceVertical(context: context, size: .01),
                      Container(
                        width: context.mediaQueryWidth(context),
                        // height: context.mediaQueryHeight(context) * .4,
                        decoration: BoxDecoration(
                          color: GenerateDataColors.white_neutral.toHex,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: 'Chequered overshirt'.toText(
                                      context: context,
                                      fontWeight: FontWeight.w600,
                                      fontSize: GenerateStyleFont.title2)),
                              '\$30'.toText(
                                  context: context,
                                  fontSize: GenerateStyleFont.title3,
                                  fontWeight: FontWeight.w600,
                                  color: GenerateDataColors.orange1_btn.toHex),
                            ],
                          ),
                          Row(
                            children: [
                              SvgGenerated(
                                  generate: Generate.asset,
                                  router: GenerateDataImages.star,
                                  width: context.mediaQueryWidth(context) * .0,
                                  height:
                                      context.mediaQueryHeight(context) * .02),
                              toSpaceLine(context: context, size: .02),
                              '4,9'.toText(
                                  context: context,
                                  color: GenerateDataColors.orange1_btn.toHex,
                                  fontWeight: FontWeight.w600),
                              toSpaceLine(context: context, size: .01),
                              '(12 ${context.toAppLocalization.reviews})'
                                  .toText(
                                      context: context,
                                      fontWeight: FontWeight.w500,
                                      color: GenerateDataColors
                                          .grey_neutral.toHex),
                            ],
                          ),
                          toSpaceVertical(context: context, size: .02),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: context.toAppLocalization.description.toText(
                                context: context,
                                fontWeight: FontWeight.w600,
                                fontSize: GenerateStyleFont.body6,
                                color: GenerateDataColors.dark_neutral.toHex),
                          ),
                          toSpaceVertical(context: context, size: .008),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text:
                                  'Chequered overshirt with snap-button fastening, front pockets and long sleeves...  ',
                              style: TextStyle(
                                  color: GenerateDataColors.dark_neutral.toHex,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                                text: context.toAppLocalization.read_more,
                                style: TextStyle(
                                  color: GenerateDataColors.orange1_btn.toHex,
                                  fontWeight: FontWeight.w500,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {}),
                          ])),
                          toSpaceVertical(context: context, size: .025),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  context.toAppLocalization.size.toText(
                                      context: context,
                                      fontSize: GenerateStyleFont.body6,
                                      fontWeight: FontWeight.w600,
                                      color: GenerateDataColors
                                          .dark_neutral.toHex),
                                  toSpaceVertical(context: context, size: .007),
                                  SizedBox(
                                    height:
                                        context.mediaQueryHeight(context) * .04,
                                    width:
                                        context.mediaQueryWidth(context) * .4,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        List<String> sizeList = [
                                          'S',
                                          'M',
                                          'L',
                                          'XL'
                                        ];
                                        return Container(
                                          alignment: Alignment.center,
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: GenerateDataColors
                                                    .grey1_neutral.toHex,
                                                width: 2),
                                          ),
                                          child: sizeList[index].toText(
                                              context: context,
                                              fontWeight: FontWeight.w500,
                                              color: GenerateDataColors
                                                  .dark_neutral.toHex,
                                              fontSize:
                                                  GenerateStyleFont.caption),
                                        ).toSpace(
                                            context: context, right: .027);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  context.toAppLocalization.color.toText(
                                      context: context,
                                      fontSize: GenerateStyleFont.body6,
                                      fontWeight: FontWeight.w600,
                                      color: GenerateDataColors
                                          .dark_neutral.toHex),
                                  toSpaceVertical(context: context, size: .007),
                                  SizedBox(
                                    height:
                                        context.mediaQueryHeight(context) * .04,
                                    width:
                                        context.mediaQueryWidth(context) * .4,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        List<Color> colorList = [
                                          GenerateDataColors.accent.toHex,
                                          GenerateDataColors.orange1_btn.toHex,
                                          GenerateDataColors.grey1_neutral.toHex
                                        ];
                                        return Container(
                                          width:
                                              context.mediaQueryWidth(context) *
                                                  .07,
                                          height:
                                              context.mediaQueryWidth(context) *
                                                  .07,
                                          decoration: BoxDecoration(
                                            color: colorList[index],
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: GenerateDataColors
                                                    .orange1_btn.toHex),
                                          ),
                                        ).toSpace(
                                            context: context, right: .027);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          toSpaceVertical(context: context, size: .02),
                          SizedBox(
                              width: context.mediaQueryWidth(context),
                              child: GradientButton(
                                  onPressed: () {},
                                  title: context.toAppLocalization.add_to_cart))
                        ].toItem.toSpace(
                            context: context,
                            left: .06,
                            right: .06,
                            top: .035,
                            bottom: .03),
                      )
                    ].toItem,
                  ),
                ],
              ),
            );
          },
          bloc: LogicBloc.productAlbumCounterBloc,
        ),
        // child: SizedBox(
        //   width: context.mediaQueryWidth(context),
        //   height: context.mediaQueryHeight(context),
        //   child: Stack(
        //     alignment: Alignment.topCenter,
        //     children: [
        //       PageView.builder(
        //         itemBuilder: (context, index) => Image.asset(
        //           GenerateDataImages.product_model,
        //           alignment: Alignment.topCenter,
        //         ),
        //       ),
        //       Positioned(
        //         width: context.mediaQueryWidth(context),
        //         top: context.mediaQueryHeight(context) * .04,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Container(
        //               decoration: BoxDecoration(
        //                   color: context.toTheme.colorScheme.onPrimary,
        //                   borderRadius: BorderRadius.circular(10)),
        //               child: SvgGenerated(
        //                       generate: Generate.asset,
        //                       router: GenerateDataImages.arrow_left,
        //                       width: context.mediaQueryWidth(context) * .03,
        //                       height: context.mediaQueryHeight(context) * .03)
        //                   .toSpace(
        //                       context: context,
        //                       left: .01,
        //                       right: .01,
        //                       top: .005,
        //                       bottom: .005),
        //             )
        //                 .generateButton(
        //                   onTap: () {},
        //                 )
        //                 .toSpace(
        //                   context: context,
        //                   top: .01,
        //                   bottom: .01,
        //                   left: .03,
        //                 ),
        //             Container(
        //               decoration: BoxDecoration(
        //                   color: context.toTheme.colorScheme.onPrimary,
        //                   borderRadius: BorderRadius.horizontal(
        //                       left: Radius.circular(15))),
        //               child: SvgGenerated(
        //                       generate: Generate.asset,
        //                       router: GenerateDataImages.product_favorite,
        //                       width: context.mediaQueryWidth(context) * .03,
        //                       height: context.mediaQueryHeight(context) * .03)
        //                   .toSpace(
        //                       context: context,
        //                       left: .04,
        //                       right: .04,
        //                       top: .014,
        //                       bottom: .014),
        //             ).generateButton(
        //               onTap: () {},
        //             )
        //           ],
        //         ),
        //       ),
        //       Positioned(
        //         bottom: 0,
        //         child: <Widget>[

        //           Container(
        //           width: context.mediaQueryWidth(context),
        //           // height: context.mediaQueryHeight(context) * .4,
        //           decoration: BoxDecoration(
        //             color: GenerateDataColors.white_neutral.toHex,
        //             borderRadius: BorderRadius.vertical(
        //               top: Radius.circular(20),
        //             ),
        //           ),
        //           child: <Widget>[
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 'Chequered overshirt'.toText(
        //                     context: context,
        //                     fontWeight: FontWeight.w600,
        //                     fontSize: GenerateStyleFont.title2),
        //                 '\$30'.toText(
        //                     context: context,
        //                     fontSize: GenerateStyleFont.title3,
        //                     fontWeight: FontWeight.w600,
        //                     color: GenerateDataColors.orange1_btn.toHex),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 SvgGenerated(
        //                     generate: Generate.asset,
        //                     router: GenerateDataImages.star,
        //                     width: context.mediaQueryWidth(context) * .0,
        //                     height: context.mediaQueryHeight(context) * .02),
        //                 toSpaceLine(context: context, size: .02),
        //                 '4,9'.toText(
        //                     context: context,
        //                     color: GenerateDataColors.orange1_btn.toHex,
        //                     fontWeight: FontWeight.w600),
        //                 toSpaceLine(context: context, size: .01),
        //                 '(12 ${context.toAppLocalization.reviews})'.toText(
        //                     context: context,
        //                     fontWeight: FontWeight.w500,
        //                     color: GenerateDataColors.grey_neutral.toHex),
        //               ],
        //             ),
        //             toSpaceVertical(context: context, size: .02),
        //             Align(
        //               alignment: Alignment.centerLeft,
        //               child: context.toAppLocalization.description.toText(
        //                   context: context,
        //                   fontWeight: FontWeight.w600,
        //                   fontSize: GenerateStyleFont.body6,
        //                   color: GenerateDataColors.dark_neutral.toHex),
        //             ),
        //             toSpaceVertical(context: context, size: .008),
        //             RichText(
        //                 text: TextSpan(children: [
        //               TextSpan(
        //                 text:
        //                     'Chequered overshirt with snap-button fastening, front pockets and long sleeves...  ',
        //                 style: TextStyle(
        //                     color: GenerateDataColors.dark_neutral.toHex,
        //                     fontWeight: FontWeight.w400),
        //               ),
        //               TextSpan(
        //                   text: context.toAppLocalization.read_more,
        //                   style: TextStyle(
        //                     color: GenerateDataColors.orange1_btn.toHex,
        //                     fontWeight: FontWeight.w500,
        //                   ),
        //                   recognizer: TapGestureRecognizer()
        //                     ..onTap = () {
        //                       print(isDescriptionMore);
        //                     }),
        //             ])),
        //             toSpaceVertical(context: context, size: .025),
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     context.toAppLocalization.size.toText(
        //                         context: context,
        //                         fontSize: GenerateStyleFont.body6,
        //                         fontWeight: FontWeight.w600,
        //                         color: GenerateDataColors.dark_neutral.toHex),
        //                     toSpaceVertical(context: context, size: .007),
        //                     SizedBox(
        //                       height: context.mediaQueryHeight(context) * .04,
        //                       width: context.mediaQueryWidth(context) * .4,
        //                       child: ListView.builder(
        //                         scrollDirection: Axis.horizontal,
        //                         itemCount: 4,
        //                         itemBuilder: (context, index) {
        //                           List<String> sizeList = ['S', 'M', 'L', 'XL'];
        //                           return Container(
        //                             alignment: Alignment.center,
        //                             width: 28,
        //                             height: 28,
        //                             decoration: BoxDecoration(
        //                               shape: BoxShape.circle,
        //                               border: Border.all(
        //                                   color: GenerateDataColors
        //                                       .grey1_neutral.toHex,
        //                                   width: 2),
        //                             ),
        //                             child: sizeList[index].toText(
        //                                 context: context,
        //                                 fontWeight: FontWeight.w500,
        //                                 color: GenerateDataColors
        //                                     .dark_neutral.toHex,
        //                                 fontSize: GenerateStyleFont.caption),
        //                           ).toSpace(context: context, right: .027);
        //                         },
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     context.toAppLocalization.color.toText(
        //                         context: context,
        //                         fontSize: GenerateStyleFont.body6,
        //                         fontWeight: FontWeight.w600,
        //                         color: GenerateDataColors.dark_neutral.toHex),
        //                     toSpaceVertical(context: context, size: .007),
        //                     SizedBox(
        //                       height: context.mediaQueryHeight(context) * .04,
        //                       width: context.mediaQueryWidth(context) * .4,
        //                       child: ListView.builder(
        //                         scrollDirection: Axis.horizontal,
        //                         itemCount: 3,
        //                         itemBuilder: (context, index) {
        //                           List<Color> colorList = [
        //                             GenerateDataColors.accent.toHex,
        //                             GenerateDataColors.orange1_btn.toHex,
        //                             GenerateDataColors.grey1_neutral.toHex
        //                           ];
        //                           return Container(
        //                             width:
        //                                 context.mediaQueryWidth(context) * .07,
        //                             height:
        //                                 context.mediaQueryWidth(context) * .07,
        //                             decoration: BoxDecoration(
        //                               color: colorList[index],
        //                               shape: BoxShape.circle,
        //                               border: Border.all(
        //                                   color: GenerateDataColors
        //                                       .orange1_btn.toHex),
        //                             ),
        //                           ).toSpace(context: context, right: .027);
        //                         },
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ],
        //             ),
        //             toSpaceVertical(context: context, size: .02),
        //             SizedBox(
        //                 width: context.mediaQueryWidth(context),
        //                 child: GradientButton(
        //                     onPressed: () {},
        //                     title: context.toAppLocalization.add_to_cart))
        //           ].toItem.toSpace(
        //               context: context,
        //               left: .06,
        //               right: .06,
        //               top: .035,
        //               bottom: .03),
        //         )].toItem,
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
