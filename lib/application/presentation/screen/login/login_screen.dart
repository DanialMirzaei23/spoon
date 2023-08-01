// todo => Screen Login

import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.mainScaffold(
      context: context,
      isTitle: true,
      alignLogo: Alignment.topCenter,
      heightColor: .3,
      opacity: .01,
      alignItem: Alignment.bottomCenter,
      child: Column(
        children: [
          SocialMedia(
              title: context.toAppLocalization.continue_with_Google,
              logo: GenerateDataImages.google),
          SocialMedia(
              title: context.toAppLocalization.continue_with_Facebook,
              logo: GenerateDataImages.facebook),
          DividerText(
            title: context.toAppLocalization.or,
            endThink: .00,
            startThink: .04,
          ).toSpace(context: context, top: .02, bottom: .02),
          TextFieldGenerated(
              nameField: context.toAppLocalization.email,
              errText: '',
              textEditingController: Controller.emailLogin,
              textInputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.go,
              titleField: context.toAppLocalization.enter_your_email,
          ),
          TextFieldPasswordGenerated(
              nameField: context.toAppLocalization.password,
              errText: '',
              textEditingController: Controller.passwordLogin,
              textInputType: TextInputType.name,
              textInputAction: TextInputAction.go,
              titleField: context.toAppLocalization.enter_your_password),
          Container(
            alignment: Alignment.centerRight,
            child: context.toAppLocalization.forgot_your_password.toText(
                context: context,
                fontWeight: FontWeight.w600,
                color: GenerateDataColors.orange1_btn.toHex,
                fontSize: GenerateStyleFont.caption),
          ).toSpace(context: context, top: .01),
          ButtonCustomer(
            onPressed: () {},
            buttonColor: context.toTheme.disabledColor,
            title: context.toAppLocalization.log_In,
            titleColor: context.toTheme.colorScheme.onPrimary,
          ).toSpace(context: context, top: .04),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                context.toAppLocalization.dont_have_an_account.toText(
                    context: context,
                    color: GenerateDataColors.grey_neutral.toHex,
                    fontWeight: FontWeight.w600),
                const SizedBox(width: 5),
                context.toAppLocalization.register.toText(
                    context: context,
                    color: GenerateDataColors.orange1_btn.toHex,
                    fontWeight: FontWeight.w600).generateButton(onTap: ()=>context.navigatorPush(onGenerated: onGenerateRouters.onRegister)),
              ],
            ).toSpace(context: context, top: .02, bottom: .03),
          ),
        ],
      ).toSpace(context: context, left: .08, right: .08),
    );
  }
}
