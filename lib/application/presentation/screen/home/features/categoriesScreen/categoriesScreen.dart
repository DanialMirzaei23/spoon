import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../../../packages/package.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.mediaQueryHeight(context),
      width: context.mediaQueryWidth(context),
      child: GridView.builder(
        itemCount: 15,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: GenerateDataColors.white_neutral.toHex,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  SvgGenerated(
                    generate: Generate.image,
                    router: GenerateDataImages.card,
                    width: context.mediaQueryWidth(context),
                    height: context.mediaQueryWidth(context),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 18,
                    child: 'Tops'.toText(
                      context: context,
                      fontSize: GenerateStyleFont.headline1,
                      color: GenerateDataColors.white_neutral.toHex,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ));
        },
      ),
    ).toSpace(context: context, top: .014);
  }
}
