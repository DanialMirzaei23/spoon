import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../../../packages/package.dart';
import '../../../modules/widget/exp_main_router.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
      context: context,
      // ignore: avoid_print
      reActionIconAppBar: () => print("object"),
      child: SingleChildScrollView(
        child: Container(
          height: context.mediaQueryHeight(context) * .88,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgGenerated(
                  generate: Generate.asset,
                  router: GenerateDataImages.mailbox,
                  width: context.mediaQueryWidth(context) * .3,
                  height: context.mediaQueryHeight(context) * .3).toSpace(context: context,top: .07),
              [
                context.toAppLocalization
                    .please_enter_the_4_digit_code_sent_to
                    .toText(
                    context: context,
                    fontWeight: FontWeight.w600,
                    color: GenerateDataColors.grey_neutral.toHex,textAlign: TextAlign.center),
                "account@gmail.com".toText(
                    context: context,
                    fontWeight: FontWeight.w600,
                    color: GenerateDataColors.dark_neutral.toHex
                ),
                toSpaceVertical(context: context, size: .02),
                 PinCodeGenerate(
                     validator: (code) {
                       print(code);
                       if (code=="1234"){
                         print("object");
                       }
                   return '';
                 }, onSave: (pass) {
                   return 'code';
                 }, onTap: (){}, textEditingController: TextEditingController()),
                toSpaceVertical(context: context, size: .01),
                context.toAppLocalization.reset_password
                    .toText(context: context,
                    fontWeight: FontWeight.w500,
                    color: context.toTheme.colorScheme.onSecondaryContainer
                ),

              ].toItem,
              ButtonCustomer(
                  onPressed: () {},
                  title: context.toAppLocalization.reset_password,
                  titleColor: context.toTheme.colorScheme.onPrimary,
                  buttonColor: context.toTheme.disabledColor).toSpace(context: context,bottom: .01),

            ],
          ).toSpace(context: context, right: .08, left: .08),
        ),
      ),
      titleAppBar: context.toAppLocalization.verify_account,
    );
  }
}
