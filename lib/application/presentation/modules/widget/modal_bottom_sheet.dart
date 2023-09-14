import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../packages/package.dart';

void generateModalBottomSheet(BuildContext context ,{required String title, required Widget child}) async{
  Widget toSpaceVertical({
    required BuildContext context ,
    double size = .1
    })=> SizedBox(
    height: MediaQuery.sizeOf(context).height * size,
  );

  showModalBottomSheet(
          enableDrag: true,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: GenerateDataColors.white_neutral.toHex),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgGenerated(
                          generate: Generate.asset,
                          router: GenerateDataImages.arrow_left,
                          width: context.mediaQueryWidth(context) * .03,
                          height: context.mediaQueryHeight(context) * .03),
                      Spacer(),
                      title.toText(
                          context: context,
                          fontSize: GenerateStyleFont.headline1,
                          fontWeight: FontWeight.w600,
                          color: GenerateDataColors.dark_neutral.toHex),
                      Spacer(),
                    ],
                  ),
                  toSpaceVertical(context: context, size: .025),
                  child,
                ],
              ).toSpace(
                  context: context,
                  right: .04,
                  left: .04,
                  top: .02,
                  bottom: .03),
            );
          },
        );
}