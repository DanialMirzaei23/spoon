import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/white_container.dart';
import '../../../../../packages/package.dart';
import '../../../../modules/mixin/exp_main_router.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
        context: context,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: [
                toSpaceVertical(context: context,size: .015),
                WhiteContainerGenerated(child: GenerateListTile(image: GenerateDataImages.language_setting, title: context.toAppLocalization.language, icon:GenerateDataImages.arrow_drawer)),
                toSpaceVertical(context: context,size: .015),
                WhiteContainerGenerated(child: GenerateListTile(image: GenerateDataImages.contact_setting, title: context.toAppLocalization.contact, icon:GenerateDataImages.arrow_drawer)),
                toSpaceVertical(context: context,size: .015),
                WhiteContainerGenerated(child: GenerateListTile(image: GenerateDataImages.info_setting, title: context.toAppLocalization.change_password, icon:GenerateDataImages.arrow_drawer)),
              ].toItem,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: context.mediaQueryWidth(context),
                height: context.mediaQueryHeight(context)*.07,
                child: GradientButton(onPressed: (){
                  context.navigatorPush(onGenerated: onGenerateRouters.onStream);
                }, title: context.toAppLocalization.back_to_home),
              ),
            ).toSpace(context: context,bottom: .02),
          ],
        ),
        titleAppBar: context.toAppLocalization.setting,
        reActionBackIconAppBar: () {
          context.navigatorPush(onGenerated: onGenerateRouters.onStream);
        });
  }
}
