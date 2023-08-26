import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../packages/package.dart';

mixin MediaScaffold {
  static Widget mainScaffold({
    required BuildContext context,
    required Widget child,
    Alignment alignLogo = Alignment.topLeft,
    double opacity = .4,
    double heightColor = .7,
    bool isTitle = false,
    Alignment alignItem = Alignment.bottomCenter,
  }) =>
      Scaffold(
        backgroundColor: context.toTheme.colorScheme.background,
        body: Stack(
          alignment: Alignment.topLeft,
          fit: StackFit.expand,
          children: [
            SizedBox(
              height: context.mediaQueryHeight(context),
              width: context.mediaQueryWidth(context),
              child: SvgGenerated(
                  generate: Generate.image,
                  router: GenerateDataImages.background,
                  boxFit: BoxFit.fill,
                  width: context.mediaQueryWidth(context),
                  height: context.mediaQueryHeight(context)),
            ),
            SizedBox(
              width: context.mediaQueryWidth(context),
              height: context.mediaQueryHeight(context),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    tileMode: TileMode.clamp,
                    stops: [
                      opacity,
                      heightColor,
                    ],
                    colors: [
                      Colors.white.withOpacity(.01),
                      context.toTheme.colorScheme.background,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                alignment: alignItem,
                child: SingleChildScrollView(
                  // physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: SafeArea(
                      child: Column(
                    children: [
                      Container(
                        alignment: alignLogo,
                        child: Column(
                          children: [
                            const LogoApp(),
                            isTitle == false
                                ? ''.toText(context: context)
                                : context.toAppLocalization.spoon
                                    .toText(
                                        context: context,
                                        color: GenerateDataColors
                                            .orange1_btn.toHex,
                                        fontSize: GenerateStyleFont.headline2,
                                        fontWeight: FontWeight.bold,
                                        textAlign: TextAlign.center)
                                    .toSpace(context: context, top: .01),
                          ],
                        ).toSpace(
                            context: context,
                            bottom: alignItem == Alignment.center ? .37 : 0,
                            top: alignItem == Alignment.center ? .015 : 0),
                      ).toSpace(
                          context: context,
                          bottom: alignLogo == Alignment.topCenter ? .08 : .08,
                          left: alignLogo == Alignment.topLeft ? .08 : 0),
                      child,
                    ],
                  )),
                ),
              ),
            ),
          ],
        ),
      );

  static Widget nonScaffold({
    required BuildContext context,
    required Widget child,
    required String titleAppBar,
    required void Function() reActionIconAppBar,
  }) =>
      Scaffold(
        backgroundColor: context.toTheme.colorScheme.background,
        appBar: AppBar(
          elevation: 0.0,
          surfaceTintColor: context.toTheme.colorScheme.background,
          shadowColor: context.toTheme.colorScheme.background,
          leading: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: context.toTheme.colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(10)),
            child: SvgGenerated(
                generate: Generate.asset,
                router: GenerateDataImages.arrow_left,
                width: context.mediaQueryWidth(context) * .03,
                height: context.mediaQueryHeight(context) * .03),
          ).generateButton(onTap: reActionIconAppBar).toSpace(
              context: context, top: .01, bottom: .01, left: .03, right: .01),
          backgroundColor: context.toTheme.colorScheme.background,
          title: titleAppBar.toText(
              context: context,
              color: context.toTheme.colorScheme.onBackground,
              fontWeight: FontWeight.w600),
          centerTitle: true,
        ),
        body: child,
      );

  static Widget homeScaffold({
    required BuildContext context,
    required PreferredSizeWidget appBar,
    required Widget bottomNavigationBar,
    required Widget body,drawer,
    required Key key,
  }) =>
      Scaffold(
        key: key,
        drawer: drawer ,
        backgroundColor: context.toTheme.colorScheme.background,
        extendBody: true,
        appBar: appBar,
        body: body,
        bottomNavigationBar: bottomNavigationBar ,
      );
}

