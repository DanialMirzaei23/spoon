import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/extension/hexColors.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';

class BoxArrival extends StatelessWidget {
  const BoxArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 100,
      decoration: BoxDecoration(
        color: GenerateDataColors.white_neutral.toHex,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              SvgGenerated(generate: Generate.image, router: GenerateDataImages.card,
                width:context.mediaQueryWidth(context) ,
                height:context.mediaQueryHeight(context)*.14 ,
              )
            ],
          )
        ],
      ),
    );
  }
}
