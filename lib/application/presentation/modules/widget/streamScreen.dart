import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import 'package:spoon/application/presentation/screen/exp_main_router.dart';

import '../../../packages/package.dart';

class StreamScreen extends StatelessWidget {
   const StreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      builder: (context, state) {
        return MediaScaffold.homeScaffold(
          context: context,
          drawer:SafeArea(
            child: Container(
              height: context.mediaQueryHeight(context),
              width: context.mediaQueryWidth(context) /1.2,
              decoration: BoxDecoration(
                color: GenerateDataColors.white_neutral.toHex,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Profile
                  Align(
                    alignment: Alignment.topLeft,
                    child: GenerateProfileTile(nameProfile: "Danial Mirzaei", image: GenerateDataImages.icon_profile),
                  ),
                  Align(

                    child: Column(
                      children: [
                        SizedBox(
                          height: context.mediaQueryHeight(context)*.6,
                          child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        GenerateDataListDrawer.menulist[index],
                                      ],
                                    )
                                        .toSpace(context: context, top: .01)
                                        .generateButton(onTap: () {
                                      print(index);
                                    });
                                  },
                                  itemCount:
                                      GenerateDataListDrawer.menulist.length)
                              .toSpace(context: context, top: .08),
                        ),
                        // toSpaceVertical(context: context,size: .07),
                      ],
                    ),
                  ),
                  Align(
                    child: GenerateListTile(onTapTrailingText: () {
                      
                    },
                        image: GenerateDataImages.logout_drawer,
                        title: context.toAppLocalization.log_out,
                        icon: GenerateDataImages.arrow_drawer),
                  )
                ],
              ).toSpace(context: context,top: .05,bottom: .05,left: .05,right: .05),
            ).toSpace(context: context,top: .01,left: .06,bottom: .03),
          ),
          appBar: AppBar(
            elevation: 0.0,
            surfaceTintColor: context.toTheme.colorScheme.background,
            shadowColor: context.toTheme.colorScheme.background,
            leading: Builder(
              builder: (context) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: context.toTheme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(15)),
                  child: SvgGenerated(
                      generate: Generate.asset,
                      router: GenerateDataImages.icon_profile,
                      width: context.mediaQueryWidth(context) * .03,
                      height: context.mediaQueryHeight(context) * .03),
                ).generateButton(onTap: () {
                  Scaffold.of(context).openDrawer();
                }).toSpace(
                    context: context, top: .01, bottom: .01, left: .03, right: .01);
              }
            ),
            actions: [
              Container(
                height: 50,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: context.toTheme.colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(15)),
                child: SvgGenerated(
                    generate: Generate.asset,
                    router: GenerateDataImages.icon_setting,
                    width: context.mediaQueryWidth(context) * .03,
                    height: context.mediaQueryHeight(context) * .03),
              ).generateButton(onTap: () {
                context.navigatorPush(onGenerated: onGenerateRouters.onSetting);
              }).toSpace(
                  context: context,
                  top: .01,
                  bottom: .01,
                  left: .03,
                  right: .03)
            ],
            backgroundColor: context.toTheme.colorScheme.background,
            title: "danial23009".toText(
                context: context,
                color: context.toTheme.colorScheme.onBackground,
                fontWeight: FontWeight.w600),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
              child: LogicBloc.bottomNavigationBarBloc.state.screens),
          bottomNavigationBar: Container(
            height: MediaQuery.of(context).size.height *.15,
            width: MediaQuery.of(context).size.width,
            // alignment: Alignment.bottomCenter,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height:MediaQuery.of(context).size.height*.12,

                  child: CustomPaint(
                    painter: ShapeNavigator(),
                    child: Container(
                      width:MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      index == 3
                                          ? Expanded(
                                              child: FloatingAction(
                                                onTap: () {
                                                  LogicBloc
                                                      .bottomNavigationBarBloc
                                                      .add(ShopAction());
                                                },
                                                child: Icon(
                                                    GenerateNavigationBar
                                                        .dataIcon[3],
                                                    color: GenerateDataColors
                                                        .white_neutral.toHex,
                                                    size: GenerateStyleFont
                                                        .title3),
                                              ).toSpace(context: context,left: .05),
                                            )
                                          : Expanded(
                                            child: Icon(
                                                    GenerateNavigationBar
                                                        .dataIcon[index],
                                                    color: GenerateDataColors
                                                        .orange_primary.toHex,
                                                    size:
                                                        GenerateStyleFont.title3)
                                                .generateButton(onTap: () {
                                                print("hi => $index");
                                                [index].map((e) {
                                                  print(e);
                                                  switch (e) {
                                                    case 0:
                                                      LogicBloc
                                                          .bottomNavigationBarBloc
                                                          .add(HomeAction());
                                                      break;
                                                    case 1:
                                                      LogicBloc
                                                          .bottomNavigationBarBloc
                                                          .add(MenuAction());
                                                      break;
                                                    case 2:
                                                      LogicBloc
                                                          .bottomNavigationBarBloc
                                                          .add(FavoriteAction());
                                                      break;
                                                  }
                                                }).toList();
                                              }).toSpace(context: context,left: .07),
                                          ),
                                    ],
                                  ),
                                ),
                                // const SizedBox(height: 10),
                                GenerateNavigationBar.dataTextIcon[index]
                                    .toText(context: context).toSpace(context: context,left: .07),
                              ],
                            );
                          },
                          itemCount: GenerateNavigationBar.dataIcon.length,
                          itemExtent: 95),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 80,
                  right: 40,
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: GenerateDataColors.white_neutral.toHex,
                              width: 3),
                          color: GenerateDataColors.orange_primary.toHex),
                      child: "0"
                          .toText(context: context,color: GenerateDataColors.white_neutral.toHex,fontWeight: FontWeight.bold)
                          .toSpaceAll(context: context, value: .02)
                  ),
                )
              ],
            ),
          ),
        );
      },
      bloc: LogicBloc.bottomNavigationBarBloc,
    );
  }
}
// CustomPaint(
// painter: ShapeNavigator(),
// child: ListView.builder(
// shrinkWrap: true,
// physics: const NeverScrollableScrollPhysics(),
// scrollDirection: Axis.horizontal,
// itemBuilder: (context, index) {
// return Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Expanded(flex: 1,child:
// Container(
// height: context.mediaQueryHeight(context)*.12,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// index == 3
// ? FloatingAction(
// onTap: () {
// LogicBloc.bottomNavigationBarBloc.add(ShopAction());
// },
// child: Icon(
// GenerateNavigationBar.dataIcon[3],
// color: GenerateDataColors
//     .white_neutral.toHex,
// size: GenerateStyleFont.title3),
// ).toSpace(context: context,left: .05)
//     : Icon(GenerateNavigationBar
//     .dataIcon[index],color: GenerateDataColors
//     .orange_primary.toHex,
// size: GenerateStyleFont.title3).toSpace(context: context,top: .015).generateButton(onTap: (){
// print( "hi => $index");
// [index].map((e) {
// print(e);
// switch(e){
// case 0:
// LogicBloc.bottomNavigationBarBloc.add(HomeAction());
// break;
// case 1:
// LogicBloc.bottomNavigationBarBloc.add(MenuAction());
// break;
// case 2:
// LogicBloc.bottomNavigationBarBloc.add(FavoriteAction());
// break;
// }
// }
// ).toList();
// }),
//
// ],
// ),
// ),),
// const SizedBox(height: 10),
// Expanded(child: GenerateNavigationBar.dataTextIcon[index]
//     .toText(context: context)),
// ],
// );
// },
// itemCount: GenerateNavigationBar.dataIcon.length,
// itemExtent: 95),
// ),
// Container(
// alignment: Alignment.topRight,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// border: Border.all(
// color: GenerateDataColors.white_neutral.toHex,
// width: 3),
// color: GenerateDataColors.orange_primary.toHex),
// child: "0"
//     .toText(context: context,color: GenerateDataColors.white_neutral.toHex,fontWeight: FontWeight.bold)
//     .toSpaceAll(context: context, value: .02),
// ),