import 'package:flutter/material.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';

import '../../../../modules/mixin/exp_main_router.dart';
import '../../../../modules/widget/exp_main_router.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.paymentMethodsScaffold(
      context: context,
      titleAppBar: 'checkout',
      reActionBackIconAppBar: () {
        print("Icon Back Button");
      },
      onTapActionIcon: () {
        print("Icon Butoon");
      },
      isIco: true,
      iconButton: SvgGenerated(
              generate: Generate.asset,
              router: GenerateDataImages.icon_setting,
              width: context.mediaQueryWidth(context) * .03,
              height: context.mediaQueryHeight(context) * .03)
          .toSpace(context: context, left: .02, right: .02),
      child: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: [
            WhiteContainerGenerated(
              hasShadow: true,
              child: SizedBox(
                height: 190,
                width: context.mediaQueryWidth(context) * .9,
              ),
            ),
            SizedBox(
              height: 140,
              child: PageView.builder(
                  itemCount: 3,
                  controller:
                      PageController(initialPage: 1, viewportFraction: .8),
                  itemBuilder: (context, index) {
                    bool isActive = index == 1;
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ).toSpace(
                        context: context,
                        left: .025,
                        right: .025,
                        top: isActive ? 0 : .01,
                        bottom: isActive ? 0 : .01);
                  }),
            ),
          ],
        ).toSpace(context: context, top: .03, bottom: .03),
      ].toItem,
    );
  }
}
