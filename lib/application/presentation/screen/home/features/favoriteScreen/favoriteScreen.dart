import 'package:flutter/cupertino.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../../../packages/package.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> selectColors = [Colors.pinkAccent,Colors.blue,Colors.black,];
    return  Center(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: "15 items".toText(context: context,color: GenerateDataColors.grey_neutral.toHex,fontWeight: FontWeight.bold).toSpace(context: context,top: .01,bottom: .01),
          ),
          Align(
            child: Container(
// height: context.mediaQueryHeight(context),
              width: context.mediaQueryWidth(context),
              decoration: BoxDecoration(
// color: Colors.red,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 10,
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisExtent: context.mediaQueryWidth(context) * .8,
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
                                  icon: const Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                                )),
                          )
                        ],
                      ),
                      toSpaceVertical(context: context,size: .01),
                      Align(
                        alignment: Alignment.center,
                        child: "Basic round neck oversize sweatshirt"
                            .toText(context: context, fontWeight: FontWeight.w500),
                      ),
                      toSpaceVertical(context: context,size: .01),
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
                            toSpaceLine(context: context,size: .1),
                            SizedBox(
                              height: 20,
                              width: context.mediaQueryWidth(context)*.2,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return index == 3
                                        ? Container(
                                      alignment: Alignment.center,
                                      width: 17,
                                      height: 17,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: GenerateDataColors.dark_neutral.toHex),
                                          shape: BoxShape.circle),
                                      child: Icon(CupertinoIcons.plus,size: 12,fill: .2,color: GenerateDataColors.dark_neutral.toHex),
                                    ).toSpace(context: context,left: .005).generateButton(onTap: (){})
                                        : Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                          color: selectColors[index],
                                          shape: BoxShape.circle),
                                    ).toSpace(context: context,left: .005,right: .005);
                                  },
                                  itemCount: 4),
                            )
                          ],
                        ),
                      )
                    ],
                  ).toSpace(context: context, right: .014, left: .014),
                ),
              ).toSpace(context: context,bottom: .0),
            ),
          ),
        ],
      ),
    );
  }
}

