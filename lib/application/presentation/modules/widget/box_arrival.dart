import 'package:flutter/cupertino.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../packages/package.dart';

class BoxArrival extends StatelessWidget {
  const BoxArrival({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> selectColors = [Colors.pinkAccent,Colors.blue,Colors.black,];
    return Container(
      height: context.mediaQueryHeight(context) * .78,
      width: context.mediaQueryWidth(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisExtent: context.mediaQueryWidth(context) * .77,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) => Container(
          height: context.mediaQueryHeight(context) * .8,
          decoration: BoxDecoration(
              color: GenerateDataColors.white_neutral.toHex,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                          icon: const Icon(CupertinoIcons.heart),
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
                      width: context.mediaQueryWidth(context)*.18,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return index == 3
                                ? Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: GenerateDataColors.dark_neutral.toHex),
                                        shape: BoxShape.circle),
                              child: "+".toText(context: context,textAlign: TextAlign.center),
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
      ).toSpace(context: context,bottom: .03),
    );
  }
}
