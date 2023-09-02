// todo => Screen Register

import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../modules/widget/exp_main_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
        context: context,
        child: SingleChildScrollView(
          child: Container(
            height: context.mediaQueryHeight(context) * .9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    nameField: context.toAppLocalization.full_name,
                    errText: '',
                    textEditingController: Controller.fullNameRegister,
                    textInputType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.go,
                    titleField: context.toAppLocalization.enter_your_full_name),
                toSpaceVertical(context: context, size: .02),
                TextFieldGenerated(
                    nameField: context.toAppLocalization.email,
                    errText: '',
                    textEditingController: Controller.emailRegister,
                    textInputType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.go,
                    titleField: context.toAppLocalization.enter_your_email),
                toSpaceVertical(context: context, size: .02),
                TextFieldPasswordGenerated(
                    nameField: context.toAppLocalization.password,
                    errText: '',
                    textEditingController: Controller.passwordRegister,
                    textInputType: TextInputType.name,
                    textInputAction: TextInputAction.go,
                    titleField: context.toAppLocalization.enter_your_password),
                toSpaceVertical(context: context, size: .01),
                context.toAppLocalization
                    .your_password_must_be_8_or_more_character_long
                    .toText(
                        context: context,
                        fontWeight: FontWeight.w500,
                        fontSize: GenerateStyleFont.caption,
                        color: context.toTheme.colorScheme.outline,
                        textAlign: TextAlign.left),
                toSpaceVertical(context: context, size: .02),
                ButtonCustomer(
                  onPressed: () {},
                  buttonColor: context.toTheme.disabledColor,
                  title: context.toAppLocalization.log_In,
                  titleColor: context.toTheme.colorScheme.onPrimary,
                ).toSpace(context: context, top: .04),
                toSpaceVertical(context: context, size: .01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SpanGenerated(
                      text_one: context
                          .toAppLocalization.by_signing_up_agree_to_these,
                      text_tow: context.toAppLocalization.conditions,
                      description: "",
                      fontSize: GenerateStyleFont.caption,
                      color: context.toTheme.colorScheme.outline,
                      fontWeight: FontWeight.w700,
                    ),
                    SpanGenerated(
                      text_one: context.toAppLocalization.and,
                      text_tow: context.toAppLocalization.terms_of_use,
                      description: "",
                      fontSize: GenerateStyleFont.caption,
                      color: context.toTheme.colorScheme.outline,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        titleAppBar: context.toAppLocalization.register,
        reActionBackIconAppBar: () {});
  }
}
