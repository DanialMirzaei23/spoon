// ignore_for_file: non_constant_identifier_names

import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../../packages/package.dart';

class DividerText extends StatelessWidget {
  const DividerText({super.key,this.bold=1,required this.title,this.endThink=.03,this.startThink=.01});
  final double bold ,endThink , startThink ;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: _dividerHelp(context).toSpace(context: context,left: endThink,right: startThink)),
        title.toText(context: context,color: GenerateDataColors.grey_neutral.toHex,fontWeight: FontWeight.w400,),
        Expanded(child: _dividerHelp(context).toSpace(context: context,left: startThink,right: endThink)),

      ],
    );
  }
  
  Widget  _dividerHelp (BuildContext context){
    return Container(
      width: context.mediaQueryWidth(context),
      height: bold,
      alignment: Alignment.center,
      color: GenerateDataColors.grey1_neutral.toHex,
    );
  }
}
