import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

class EmptyOrdersScreen extends StatelessWidget {
  const EmptyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
      context: context,
      titleAppBar: context.toAppLocalization.my_orders,
      reActionBackIconAppBar: () => print('object'),
      child: SizedBox(
        width: context.mediaQueryWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgGenerated(
                generate: Generate.asset,
                router: GenerateDataImages.empty_orders,
                width: context.mediaQueryWidth(context) * .3,
                height: context.mediaQueryHeight(context) * .3,
                alignment: Alignment.bottomCenter),
            toSpaceVertical(context: context, size: .02),
            context.toAppLocalization.there_is_no_order_yet.toText(
              context: context,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            const Spacer(
              flex: 2,
            ),
            SizedBox(
              width: context.mediaQueryWidth(context) * .88,
              height: context.mediaQueryHeight(context) * .07,
              child: GradientButton(
                onPressed: () {},
                title: context.toAppLocalization.back_to_home,
              ),
            ).toSpace(context: context, bottom: 0.04),
          ],
        ),
      ),
    );
  }
}
