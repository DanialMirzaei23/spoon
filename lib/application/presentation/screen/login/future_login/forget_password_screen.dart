// ignore_for_file: avoid_print

import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../../packages/package.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
      context: context,
      reActionBackIconAppBar: () => print("object"),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgGenerated(
                  generate: Generate.asset,
                  router: GenerateDataImages.lock,
                  width: context.mediaQueryWidth(context) * .3,
                  height: context.mediaQueryHeight(context) * .3)
              .toSpace(context: context, top: .07),
          [
            context.toAppLocalization
                .enter_the_email_address_or_associated_with_your_account
                .toText(
                    context: context,
                    fontWeight: FontWeight.w600,
                    color: GenerateDataColors.grey_neutral.toHex),
            toSpaceVertical(context: context, size: .02),
            TextFieldGenerated(
                nameField: '',
                errText: '',
                textEditingController: TextEditingController(),
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.go,
                titleField: context.toAppLocalization.enter_your_email),
            toSpaceVertical(context: context, size: .01),
            context.toAppLocalization.try_another_way.toText(
                context: context,
                fontWeight: FontWeight.w500,
                color: context.toTheme.colorScheme.onSecondaryContainer),
          ].toItem,
          ButtonCustomer(
                  onPressed: () {},
                  title: context.toAppLocalization.reset_password,
                  titleColor: context.toTheme.colorScheme.onPrimary,
                  buttonColor: context.toTheme.disabledColor)
              .toSpace(context: context, bottom: .01),
        ],
      ).toSpace(context: context, right: .08, left: .08),
      titleAppBar: context.toAppLocalization.forgot_password,
    );
  }
}
