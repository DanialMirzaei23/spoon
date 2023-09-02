import 'package:flutter/rendering.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';

class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
        context: context,
        icon: GenerateDataImages.camera_feedback,
        child: SingleChildScrollView(
          child: <Widget>[
            // icons
            Align(
              alignment: Alignment.center,
              child: SvgGenerated(
                  generate: Generate.asset,
                  router: GenerateDataImages.message_off_feedback,
                  width: context.mediaQueryWidth(context) * .3,
                  height: context.mediaQueryHeight(context) * .25),
            ),
            toSpaceVertical(context: context,size: .02),
            // star
            Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          child: SvgGenerated(
                              generate: Generate.asset,
                              router: GenerateDataImages.star_off_feedback,
                              width: context.mediaQueryWidth(context) * .02,
                              height:
                              context.mediaQueryHeight(context) * .07))
                          .toSpace(context: context, left: .02);
                    },
                    shrinkWrap: true,
                    itemCount: 5,
                  ),
                )),
            toSpaceVertical(context: context,size: .02),
            // message
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: context.mediaQueryWidth(context),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 40,
                      crossAxisSpacing: 10),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      alignment: Alignment.center,
                      child: "test $index ".toText(context: context),
                    ).generateButton(onTap: (){
                      print(index);
                    });
                  },
                ),
              ),
            ),

            // text box
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(width: context.mediaQueryWidth(context),height: context.mediaQueryHeight(context)*.23,child: const TextFieldGenerateComment()),
                  SizedBox(
                    width: context.mediaQueryWidth(context),
                    child: "Your feedback will be anonymous".toText(context: context),
                  )
                ],
              ),
            ),
            toSpaceVertical(context: context,size: .02),
            // button
            Align(
              child: ButtonCustomer(
                onPressed: () {},
                buttonColor: context.toTheme.disabledColor,
                title: "send review",
                titleColor: context.toTheme.colorScheme.onPrimary,
              ),
            ),
            toSpaceVertical(context: context,size: .02),
          ].toItem,
        ),
        reActionBackIconAppBar: () {},
        titleAppBar: "Give Feedback",
        isIco: false,
        onTapActionIcon: () {});
  }
}
