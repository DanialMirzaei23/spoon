import 'package:flutter/cupertino.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/modal_bottom_sheet.dart';
import 'package:spoon/application/presentation/screen/home/features/categoriesScreen/logic/bloc/categories_filter_bloc.dart';
import 'package:spoon/application/presentation/screen/home/features/categoriesScreen/logic/event/categories_filter_event.dart';
import 'package:spoon/application/presentation/screen/home/features/categoriesScreen/logic/state/categories_state.dart';
import '../../../../../packages/package.dart';
import '../../../../modules/widget/exp_main_router.dart';

class CategoriesContentScreen extends StatelessWidget {
  const CategoriesContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> selectColors = [
      Colors.pinkAccent,
      Colors.blue,
      Colors.black,
    ];
    List<String> filterColors = [
      'Black',
      'White',
      'Grey',
      'Red',
      'Orange',
      'Yellow',
      'Others',
    ];
    List<String> filterCharacteristics = [
      'Short Sleeves',
      'Long Sleeves',
      'Lace',
      'Cropped',
      'Denim',
      'Others',
    ];

    return MediaScaffold.nonScaffold(
      context: context,
      titleAppBar: 'Tops',
      icon: GenerateDataImages.filter,
      onTapActionIcon: () {
        generateModalBottomSheet(context,
            title: context.toAppLocalization.filter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                context.toAppLocalization.size.toText(
                    context: context,
                    fontSize: GenerateStyleFont.body4,
                    fontWeight: FontWeight.w600,
                    color: GenerateDataColors.grey_neutral.toHex),
                toSpaceVertical(context: context, size: .01),
                SizedBox(
                  height: context.mediaQueryHeight(context) * .04,
                  width: context.mediaQueryWidth(context),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: GenerateDataColors.grey1_neutral.toHex,
                              width: 2),
                        ),
                        child: 'XL'.toText(
                            context: context,
                            fontWeight: FontWeight.w500,
                            color: GenerateDataColors.dark_neutral.toHex,
                            fontSize: GenerateStyleFont.caption),
                      ).toSpace(context: context, right: .027);
                    },
                  ),
                ),
                toSpaceVertical(context: context, size: .025),
                context.toAppLocalization.color.toText(
                    context: context,
                    fontSize: GenerateStyleFont.body4,
                    fontWeight: FontWeight.w600,
                    color: GenerateDataColors.grey_neutral.toHex),
                toSpaceVertical(context: context, size: .01),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: filterColors
                      .map(
                        (value) => Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: GenerateDataColors.grey1_neutral.toHex),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: value
                              .toText(
                                  context: context,
                                  fontWeight: FontWeight.w500,
                                  color: GenerateDataColors.dark_neutral.toHex,
                                  fontSize: GenerateStyleFont.body4)
                              .toSpace(
                                  context: context,
                                  left: .04,
                                  right: .04,
                                  top: .01,
                                  bottom: .01),
                        ),
                      )
                      .toList(),
                ),
                toSpaceVertical(context: context, size: .025),
                context.toAppLocalization.characteristics.toText(
                    context: context,
                    fontSize: GenerateStyleFont.body4,
                    fontWeight: FontWeight.w600,
                    color: GenerateDataColors.grey_neutral.toHex),
                toSpaceVertical(context: context, size: .01),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: filterCharacteristics
                      .map(
                        (value) => Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: GenerateDataColors.grey1_neutral.toHex),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: value
                              .toText(
                                  context: context,
                                  fontWeight: FontWeight.w500,
                                  color: GenerateDataColors.dark_neutral.toHex,
                                  fontSize: GenerateStyleFont.body4)
                              .toSpace(
                                  context: context,
                                  left: .04,
                                  right: .04,
                                  top: .01,
                                  bottom: .01),
                        ),
                      )
                      .toList(),
                ),
                toSpaceVertical(context: context, size: .025),
                context.toAppLocalization.price.toText(
                    context: context,
                    fontSize: GenerateStyleFont.body4,
                    fontWeight: FontWeight.w600,
                    color: GenerateDataColors.grey_neutral.toHex),
                toSpaceVertical(context: context, size: .01),
                SizedBox(
                  height: 16,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: context.mediaQueryWidth(context),
                        color: GenerateDataColors.grey1_neutral.toHex,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 2,
                          width: 100,
                          color: GenerateDataColors.orange_primary.toHex,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: Draggable(
                          feedback: const SizedBox(),
                          onDragUpdate: (details) {},
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: GenerateDataColors.dark_neutral.toHex,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 180,
                        child: Draggable(
                          feedback: Container(
                            width: 30,
                            height: 30,
                            color: Colors.black,
                          ),
                          onDragUpdate: (details) {},
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: GenerateDataColors.orange_primary.toHex,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.mediaQueryHeight(context) * .05,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: GenerateDataColors.white_neutral.toHex,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: 'All'
                      .toText(
                        context: context,
                        fontSize: GenerateStyleFont.body4,
                        fontWeight: FontWeight.w500,
                      )
                      .toSpace(
                          context: context,
                          left: .06,
                          right: .06,
                          bottom: .01,
                          top: .01),
                ).toSpace(context: context, right: .05);
              },
            ),
          ),
          toSpaceVertical(context: context, size: .025),
          '20 ${context.toAppLocalization.items}'.toText(context: context),
          toSpaceVertical(context: context, size: .01),
          Expanded(
              child: GridView.builder(
            itemCount: 15,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 10,
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisExtent: context.mediaQueryHeight(context) * .37,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) => Container(
              // height: context.mediaQueryHeight(context) * .5,
              decoration: BoxDecoration(
                  color: GenerateDataColors.white_neutral.toHex,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      SvgGenerated(
                        generate: Generate.image,
                        router: GenerateDataImages.card,
                        width: context.mediaQueryWidth(context),
                        height: context.mediaQueryHeight(context) * .25,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            decoration: BoxDecoration(
                                color: GenerateDataColors.white_neutral.toHex,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: IconButton(
                              onPressed: () {},
                              // CupertinoIcons.heart_fill
                              icon: const Icon(
                                CupertinoIcons.heart,
                                // color: Colors.red,
                              ),
                            )),
                      )
                    ],
                  ),
                  toSpaceVertical(context: context, size: .01),
                  Align(
                    alignment: Alignment.center,
                    child: "Basic round neck oversize sweatshirt"
                        .toText(context: context, fontWeight: FontWeight.w500),
                  ),
                  toSpaceVertical(context: context, size: .01),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        "\$20".toText(
                            context: context,
                            fontSize: GenerateStyleFont.headline2,
                            fontWeight: FontWeight.bold,
                            color: GenerateDataColors.orange_primary.toHex),
                        toSpaceLine(context: context, size: .1),
                        SizedBox(
                          height: 20,
                          width: context.mediaQueryWidth(context) * .2,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return index == 3
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 17,
                                        height: 17,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: GenerateDataColors
                                                    .dark_neutral.toHex),
                                            shape: BoxShape.circle),
                                        child: Icon(CupertinoIcons.plus,
                                            size: 12,
                                            fill: .2,
                                            color: GenerateDataColors
                                                .dark_neutral.toHex),
                                      )
                                        .toSpace(context: context, left: .005)
                                        .generateButton(onTap: () {})
                                    : Container(
                                        width: 15,
                                        height: 15,
                                        decoration: BoxDecoration(
                                            color: selectColors[index],
                                            shape: BoxShape.circle),
                                      ).toSpace(
                                        context: context,
                                        left: .005,
                                        right: .005);
                              },
                              itemCount: 4),
                        )
                      ],
                    ),
                  )
                ],
              ).toSpace(context: context, right: .014, left: .014),
            ),
          ).toSpace(context: context, bottom: .0)),
        ],
      ),
      reActionBackIconAppBar: () {},
    );
  }
}
