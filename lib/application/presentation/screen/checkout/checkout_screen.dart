import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../../packages/package.dart';
import '../../modules/widget/exp_main_router.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
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
        WhiteContainerGenerated(
            hasShadow: true,
            child: <Widget>[
              GenerateListTile(
                image: GenerateDataImages.location_checkout,
                title: context.toAppLocalization.shipping_information,
                icon: '',
                trailingText: context.toAppLocalization.edit,
                onTapTrailingText: () {
                  context.navigatorPush(
                      onGenerated: onGenerateRouters.onShippingInformation);
                },
              ),
              GenerateListTile(
                  onTapTrailingText: () {},
                  image: GenerateDataImages.icon_user_checkout,
                  title: 'Eleanor Pena',
                  icon: '',
                  trailingText: '',
                  isBold: false),
              GenerateListTile(
                  onTapTrailingText: () {},
                  image: GenerateDataImages.call_outline_checkout,
                  title: '(303) 555-0105',
                  icon: '',
                  trailingText: '',
                  isBold: false),
              GenerateListTile(
                  onTapTrailingText: () {},
                  image: GenerateDataImages.home_outline_checkout,
                  title: '4517 Washington Ave. Manchester, Kentucky 39495',
                  icon: '',
                  trailingText: ' ',
                  isBold: false),
              toSpaceVertical(context: context, size: .01),
            ].toItem),
        toSpaceVertical(context: context, size: .03),
        WhiteContainerGenerated(
          hasShadow: true,
          child: GenerateListTile(
            onTapTrailingText: () {
              context.navigatorPush(
                  onGenerated: onGenerateRouters.onPaymentMethods);
            },
            image: GenerateDataImages.wallet_colored_checkout,
            title: context.toAppLocalization.payment_method,
            icon: '',
            trailingText: context.toAppLocalization.edit,
          ),
        ),
        toSpaceVertical(context: context, size: .03),
        WhiteContainerGenerated(
          hasShadow: true,
          child: GenerateListTile(
            onTapTrailingText: () {},
            image: GenerateDataImages.ticket_checkout,
            title: context.toAppLocalization.promo_code,
            icon: '',
            trailingText: context.toAppLocalization.add,
          ),
        ),
        toSpaceVertical(context: context, size: .03),
        WhiteContainerGenerated(
            hasShadow: true,
            child: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  context.toAppLocalization.item_total.toText(
                    context: context,
                    color: GenerateDataColors.grey_neutral.toHex,
                    fontWeight: FontWeight.w500,
                  ),
                  '\$60'.toText(
                    context: context,
                    color: GenerateDataColors.grey_neutral.toHex,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  context.toAppLocalization.shipping_fee.toText(
                    context: context,
                    color: GenerateDataColors.grey_neutral.toHex,
                    fontWeight: FontWeight.w500,
                  ),
                  context.toAppLocalization.free.toText(
                    context: context,
                    color: GenerateDataColors.grey_neutral.toHex,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  context.toAppLocalization.voucher.toText(
                    context: context,
                    color: GenerateDataColors.grey_neutral.toHex,
                    fontWeight: FontWeight.w500,
                  ),
                  '-\$20'.toText(
                    context: context,
                    color: GenerateDataColors.grey_neutral.toHex,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  context.toAppLocalization.total.toText(
                    context: context,
                    color: GenerateDataColors.dark_neutral.toHex,
                    fontWeight: FontWeight.w600,
                    fontSize: GenerateStyleFont.headline2,
                  ),
                  '\$75'.toText(
                    context: context,
                    color: GenerateDataColors.dark_neutral.toHex,
                    fontWeight: FontWeight.w600,
                    fontSize: GenerateStyleFont.headline2,
                  )
                ],
              ),
            ].toItem.toSpace(
                context: context,
                left: .04,
                right: .04,
                top: .02,
                bottom: .02)),
        toSpaceVertical(context: context, size: .027),
        SizedBox(
          width: context.mediaQueryWidth(context),
          child: GradientButton(
              onPressed: () {}, title: context.toAppLocalization.place_order),
        ),
      ].toItem,
    );
  }
}
