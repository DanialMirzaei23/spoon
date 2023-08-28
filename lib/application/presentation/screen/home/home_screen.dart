// todo => Screen Home

import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return [
        toSpaceVertical(context: context,size: .01),
        SizedBox(
          child: Row(
            children: [
            Expanded(flex: 1,child: SearchGenerate(),),// <------ No l10n file
            toSpaceLine(context: context,size: .02),
            Expanded(flex: 0,child:
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: GenerateDataColors.white_neutral.toHex,
                borderRadius: BorderRadius.circular(10)
              ),
              child: SvgGenerated(generate: Generate.asset, router: GenerateDataImages.setting_group,
                width:context.mediaQueryWidth(context)*.02 ,
                height:context.mediaQueryHeight(context)*.02 ,
              ).toSpace(context: context,right: .035,left: .035,bottom: .022,top: .022),
            ).generateButton(onTap: (){}),),
            ],
          ),
        ),
        toSpaceVertical(context: context,size: .02),
        SizedBox(
          child: BoxHome(), // <------ No l10n file
        ),
        toSpaceVertical(context: context,size: .015),
        SizedBox(
          child: Row(

            children: [
              Expanded(child: Row(
                children: [
                  'New Arrival'.toText(context: context,fontSize: GenerateStyleFont.title2,fontWeight: FontWeight.bold),
                  SvgGenerated(generate: Generate.asset, router: GenerateDataImages.fire_icon,
                    width:context.mediaQueryWidth(context)*.03 ,
                    height:context.mediaQueryHeight(context)*.03 ,
                  ).toSpace(context: context,left: .02,)
                ],
              ),flex: 5),
              Expanded(child: 'see all'.toText(context: context,fontSize: GenerateStyleFont.body4,fontWeight: FontWeight.w700,color: GenerateDataColors.orange_primary.toHex),)
            ],
          ),
        ),// <------ No l10n file
        toSpaceVertical(context: context,size: .01),
        BoxArrival() // <------ No l10n file
      ].toItem;
  }
}
