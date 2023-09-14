import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../modules/widget/exp_main_router.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> selectColors = [
      Colors.pinkAccent,
      Colors.blue,
      Colors.black,
    ];

    return MediaScaffold.nonScaffold(
      context: context,
      titleAppBar: '${context.toAppLocalization.result_for}"test word"',
      child: Column(
        children: [
          Spacer(),
          SvgGenerated(
              generate: Generate.asset,
              router: GenerateDataImages.empty_search,
              width: context.mediaQueryWidth(context) * .4,
              height: context.mediaQueryHeight(context) * .3),
          context.toAppLocalization.no_result_found.toText(
            context: context,
            fontSize: GenerateStyleFont.body6,
            color: GenerateDataColors.dark_neutral.toHex,
            fontWeight: FontWeight.w500,
          ),
          Spacer(
            flex: 2,
          ),
          SizedBox(
            width: context.mediaQueryWidth(context),
            child: GradientButton(
              onPressed: () {},
              title: context.toAppLocalization.back_to_home,
            ),
          ).toSpace(context: context, bottom: .02),
        ],
      ), reActionBackIconAppBar: () {  },

      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     toSpaceVertical(context: context, size: .015),
      //     '130 ${context.toAppLocalization.items_found}'.toText(
      //         context: context,
      //         fontSize: GenerateStyleFont.body6,
      //         color: GenerateDataColors.grey_neutral.toHex,
      //         fontWeight: FontWeight.w500),
      //     toSpaceVertical(context: context, size: .008),
      //     Expanded(
      //       child: Container(
      //         // height: context.mediaQueryHeight(context),
      //         width: context.mediaQueryWidth(context),
      //         decoration: BoxDecoration(
      //           // color: Colors.red,
      //           borderRadius: BorderRadius.circular(15.0),
      //         ),
      //         child: GridView.builder(
      //           // physics: NeverScrollableScrollPhysics(),
      //           // shrinkWrap: true,
      //           itemCount: 15,
      //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //               childAspectRatio: 10,
      //               crossAxisCount: 2,
      //               crossAxisSpacing: 8,
      //               mainAxisExtent: context.mediaQueryHeight(context) * .37,
      //               mainAxisSpacing: 10),
      //           itemBuilder: (context, index) => Container(
      //             // height: context.mediaQueryHeight(context) * .5,
      //             decoration: BoxDecoration(
      //                 color: GenerateDataColors.white_neutral.toHex,
      //                 borderRadius: BorderRadius.circular(15)),
      //             child: Column(
      //               mainAxisSize: MainAxisSize.min,
      //               children: [
      //                 Stack(
      //                   children: [
      //                     SvgGenerated(
      //                       generate: Generate.image,
      //                       router: GenerateDataImages.card,
      //                       width: context.mediaQueryWidth(context),
      //                       height: context.mediaQueryHeight(context) * .25,
      //                     ),
      //                     Align(
      //                       alignment: Alignment.topRight,
      //                       child: Container(
      //                           decoration: BoxDecoration(
      //                               color:
      //                                   GenerateDataColors.white_neutral.toHex,
      //                               borderRadius: const BorderRadius.only(
      //                                   bottomLeft: Radius.circular(15),
      //                                   topRight: Radius.circular(15))),
      //                           child: IconButton(
      //                             onPressed: () {},
      //                             // CupertinoIcons.heart_fill
      //                             icon: const Icon(
      //                               CupertinoIcons.heart,
      //                               // color: Colors.red,
      //                             ),
      //                           )),
      //                     )
      //                   ],
      //                 ),
      //                 toSpaceVertical(context: context, size: .01),
      //                 Align(
      //                   alignment: Alignment.center,
      //                   child: "Basic round neck oversize sweatshirt".toText(
      //                       context: context, fontWeight: FontWeight.w500),
      //                 ),
      //                 toSpaceVertical(context: context, size: .01),
      //                 Align(
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: [
      //                       "\$20".toText(
      //                           context: context,
      //                           fontSize: GenerateStyleFont.headline2,
      //                           fontWeight: FontWeight.bold,
      //                           color: GenerateDataColors.orange_primary.toHex),
      //                       toSpaceLine(context: context, size: .1),
      //                       SizedBox(
      //                         height: 20,
      //                         width: context.mediaQueryWidth(context) * .2,
      //                         child: ListView.builder(
      //                             scrollDirection: Axis.horizontal,
      //                             itemBuilder: (context, index) {
      //                               return index == 3
      //                                   ? Container(
      //                                       alignment: Alignment.center,
      //                                       width: 17,
      //                                       height: 17,
      //                                       decoration: BoxDecoration(
      //                                           border: Border.all(
      //                                               color: GenerateDataColors
      //                                                   .dark_neutral.toHex),
      //                                           shape: BoxShape.circle),
      //                                       child: Icon(CupertinoIcons.plus,
      //                                           size: 12,
      //                                           fill: .2,
      //                                           color: GenerateDataColors
      //                                               .dark_neutral.toHex),
      //                                     )
      //                                       .toSpace(
      //                                           context: context, left: .005)
      //                                       .generateButton(onTap: () {})
      //                                   : Container(
      //                                       width: 15,
      //                                       height: 15,
      //                                       decoration: BoxDecoration(
      //                                           color: selectColors[index],
      //                                           shape: BoxShape.circle),
      //                                     ).toSpace(
      //                                       context: context,
      //                                       left: .005,
      //                                       right: .005);
      //                             },
      //                             itemCount: 4),
      //                       )
      //                     ],
      //                   ),
      //                 )
      //               ],
      //             ).toSpace(context: context, right: .014, left: .014),
      //           ),
      //         ).toSpace(context: context, bottom: .0),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
