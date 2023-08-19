// todo => Screen Home

import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.homeScaffold(context: context,
        titleAppBar: "da",
        reActionIconAppBar: (){},
      child:[
        toSpaceVertical(context: context,size: .01),
        SizedBox(
          child: Row(
            children: [
            Expanded(flex: 1,child: SearchGenerate(),),
            toSpaceLine(context: context,size: .02),
            Expanded(flex: 0,child:
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: GenerateDataColors.white_neutral.toHex,
                borderRadius: BorderRadius.circular(10)
              ),
              child: SvgGenerated(generate: Generate.asset, router: GenerateDataImages.setting_group,
                width:context.mediaQueryWidth(context)*.03 ,
                height:context.mediaQueryHeight(context)*.03 ,
              ).toSpace(context: context,right: .03,left: .03,bottom: .02,top: .02),
            ).generateButton(onTap: (){}),),
            ],
          ),
        ),
        toSpaceVertical(context: context,size: .03),
        SizedBox(
          child: BoxHome(),
        ),
        toSpaceVertical(context: context,size: .03),
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
        ),
        toSpaceVertical(context: context,size: .03),
        BoxArrival()
      ].toItem.toSpace(context: context,left: .05,right: .05),
    );
  }
}
