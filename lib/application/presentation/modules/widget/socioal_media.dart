import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key, required this.title, required this.logo});
  final String title;
  final String logo ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.mediaQueryWidth(context)*.85,
      decoration: BoxDecoration(
          color:GenerateDataColors.white_neutral.toHex,
          borderRadius: BorderRadius.circular(10)
      ),
      alignment: Alignment.center,
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        title: title.toText(context: context,textAlign: TextAlign.center,fontWeight: FontWeight.w600,color: GenerateDataColors.dark_neutral.toHex),
        leading: SvgGenerated(generate: Generate.asset, router: logo, width: context.mediaQueryWidth(context)*.08, height: context.mediaQueryHeight(context)*.025),
      ),
    ).toSpace(context: context,top: .01,bottom: .01);
  }
}
