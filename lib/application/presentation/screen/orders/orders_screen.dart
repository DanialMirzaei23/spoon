import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
      context: context,
      titleAppBar: context.toAppLocalization.my_orders,
      reActionIconAppBar: () => print('object'),
      child: SizedBox(
        width: context.mediaQueryWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  List<OrderStatusButtonGenerated> orderStatusList = [
                    OrderStatusButtonGenerated.processing,
                    OrderStatusButtonGenerated.delivered
                  ];
                  return OrdersItemGenerated(
                    orderStatus: orderStatusList[index],
                  );
                },
              ),
            ),
            SizedBox(
              width: context.mediaQueryWidth(context),
              height: context.mediaQueryHeight(context) * .085,
              child: GradientButton(
                onPressed: () {},
                title: context.toAppLocalization.back_to_home,
              ).toSpace(context: context, bottom: .02),
            ),
          ],
        ),
      ),
    );
  }
}
