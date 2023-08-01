// todo => Screen ONBOARDING

// ignore_for_file: unrelated_type_equality_checks, invalid_use_of_visible_for_testing_member

import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import 'package:spoon/application/presentation/screen/exp_main_router.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> sliders = [
      context.toAppLocalization.slider_one,
      context.toAppLocalization.slider_tow,
      context.toAppLocalization.slider_tree,
    ];
    List<String> items = [
      context.toAppLocalization.choices_s_one,
      context.toAppLocalization.trends_s_tow,
      context.toAppLocalization.vouchers,
      context.toAppLocalization.newbie_s_tree
    ];
    List<String> description = [
      context.toAppLocalization.confused_about_your_slider_description_one,
      context.toAppLocalization.confused_about_your_slider_description_tow,
      context.toAppLocalization.confused_about_your_slider_description_tree,
    ];

    return MediaScaffold.mainScaffold(
      context: context ,
      alignItem: Alignment.center,
      child: BlocBuilder(builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: context.mediaQueryHeight(context) * .25,
                        child: PageView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return  SpanGenerated(
                                text_one: sliders[LogicBloc.stepSliderBloc.state.sliderPage],
                                text_tow: items[LogicBloc.stepSliderBloc.state.sliderPage],
                                text_tree:LogicBloc.stepSliderBloc.state.sliderPage == 2 ? context.toAppLocalization.newbie_s_tree : '' ,
                                isTextTree:LogicBloc.stepSliderBloc.state.sliderPage == 2 ? true : false,
                                description: description[LogicBloc.stepSliderBloc.state.sliderPage],
                                color: context.toTheme.colorScheme.onTertiary,
                                fontWeight: FontWeight.bold,
                                fontSize: GenerateStyleFont.title4,
                              ).toSpace(context: context,top: .03);
                            },
                            itemCount: sliders.length),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        transformAlignment: Alignment.center,
                        width: context.mediaQueryWidth(context)*.15,
                        height:
                        context.mediaQueryHeight(context) * .01,
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, indexing) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  indexing == LogicBloc.stepSliderBloc.state.sliderPage ? Container(
                                    width: 11,
                                    height: 10,
                                    decoration:  BoxDecoration(
                                        color:   GenerateDataColors.orange1_btn.toHex  ,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10)),
                                  ):
                                  Container(
                                    width: 6,
                                    height: 6,
                                    decoration: BoxDecoration(
                                        color:  GenerateDataColors.wormy_primary.toHex  ,
                                        shape: BoxShape.circle),
                                  ).toSpace(context: context,left: .008,right: .008),
                                  // Container(
                                  //   alignment: Alignment.center,
                                  //   width: 10,
                                  //   height: 10,
                                  //   decoration:  BoxDecoration(
                                  //       color:  GenerateDataColors.orange1_btn.toHex  ,
                                  //       shape: BoxShape.circle),
                                  // ),
                                ],
                              );
                            },
                            itemCount: sliders.length),
                      ).toSpace(context: context,bottom: .04)
                    ],
                  ),
                ).toSpace(
                  context: context,
                  right: .05,
                  left: .05,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     LogicBloc.stepSliderBloc.state.sliderPage==2 ? ''.toText(context: context) : Expanded(
                        child: ButtonCustomer(
                          onPressed: () {
                            LogicBloc.stepSliderBloc.emit(StepSlider(sliderPage: 2));
                          },
                          buttonColor: context.toTheme.colorScheme.background,
                          title: context.toAppLocalization.skip_next_button,
                          titleColor: LogicBloc.stepSliderBloc.state.sliderPage==2 ? GenerateDataColors.wormy_primary.toHex : context.toTheme.colorScheme.primary,
                        ),
                      ),
                      Expanded(
                        child: GradientButton(
                            onPressed: () {
                              LogicBloc.stepSliderBloc.add(CounterSlider());
                              if (LogicBloc.stepSliderBloc.state.sliderPage == 2){
                                context.navigatorPush(onGenerated: onGenerateRouters.onLogin);
                              }
                            },
                            title:LogicBloc.stepSliderBloc.state.sliderPage==2 ? context.toAppLocalization.get_start  : context.toAppLocalization.next_button),
                      ),
                    ],
                  ),
                ).toSpace(
                    context: context, right: .05, left: .05, bottom: .01),
              ],
            );
          },bloc: LogicBloc.stepSliderBloc),
    );
  }
}
