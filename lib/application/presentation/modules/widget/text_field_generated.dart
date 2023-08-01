// ignore_for_file: non_constant_identifier_names, unrelated_type_equality_checks, invalid_use_of_visible_for_testing_member

import 'package:flutter/services.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import 'package:spoon/application/presentation/screen/login/logic/exp_main_router.dart';

import '../../../packages/package.dart';

class TextFieldGenerated extends StatelessWidget {
  const TextFieldGenerated(
      {super.key,
      required this.nameField,
      required this.errText,
      required this.textEditingController,
      required this.textInputType,
      required this.textInputAction,
      required this.titleField});

  final String nameField, errText, titleField;
  final TextEditingController textEditingController;

  final TextInputType textInputType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: BlocBuilder(
        builder: (context, state) {
          bool validate = ValidateRegExp.validateEmail
              .hasMatch(LogicBloc.textBloc.state.generateInput);
          bool validText = ValidateRegExp.validateEmailText
              .hasMatch(LogicBloc.textBloc.state.generateInput);
          String? handlingText() {
            if (validText == true) {
              if (validate == true) {
                return context.toAppLocalization.success;
              }
              if (LogicBloc.textBloc.state.generateInput !=
                  ValidateRegExp.hashEmail) {
                return context.toAppLocalization.the_email_is_incorrect;
              }
              return context.toAppLocalization.good_email;
            } else {
              return null;
            }
            return null;
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                      child:  nameField.toText(
                              context: context,
                              color: GenerateDataColors.grey_neutral.toHex,
                              fontWeight: FontWeight.w500),
                    ).toSpace(context: context, bottom: .01, top: .015),
              TextFormField(
                style: ToStyle(
                  fontWeight: FontWeight.w600,
                  color: GenerateDataColors.dark_neutral.toHex,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: GenerateDataColors.white_neutral.toHex,
                  enabled: true,
                  hintText: titleField,
                  hintStyle: ToStyle(
                      fontSize: 14,
                      color: GenerateDataColors.grey_neutral.toHex,
                      fontWeight: FontWeight.w500),
                  alignLabelWithHint: true,

                  // disabledBorder: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                  isDense: true,
                  //GenerateDataColors.orange_primary.toHex
                  errorBorder: handlingText() == context.toAppLocalization.good_email
                      ? context.handlerWidgetErrorMode(
                          colorBorder: GenerateDataColors.orange_primary.toHex)
                      : handlingText() == context.toAppLocalization.the_email_is_incorrect
                          ? context.handlerWidgetErrorMode(
                              colorBorder: GenerateDataColors.red.toHex)
                          :
                          handlingText() == context.toAppLocalization.success
                              ? context.handlerWidgetErrorMode(
                                  colorBorder: GenerateDataColors.success.toHex)
                              : null,
                  errorText: handlingText(),
                  focusedErrorBorder: handlingText() == context.toAppLocalization.good_email
                      ? context.handlerWidgetErrorMode(
                          colorBorder: GenerateDataColors.orange_primary.toHex)
                      : handlingText() == context.toAppLocalization.the_email_is_incorrect
                          ? context.handlerWidgetErrorMode(
                              colorBorder: GenerateDataColors.red.toHex)
                          : //
                          handlingText() == context.toAppLocalization.success
                              ? context.handlerWidgetErrorMode(
                                  colorBorder: GenerateDataColors.success.toHex)
                              : null,
                  errorStyle: handlingText() == context.toAppLocalization.good_email
                      ? context.handlerWidgetErrorModeText(
                          colorBorder: GenerateDataColors.orange_primary.toHex)
                      : handlingText() == context.toAppLocalization.the_email_is_incorrect
                          ? context.handlerWidgetErrorModeText(
                              colorBorder: GenerateDataColors.red.toHex)
                          : handlingText() == context.toAppLocalization.success
                              ? context.handlerWidgetErrorModeText(
                                  colorBorder: GenerateDataColors.success.toHex)
                              : null,
                ),
                inputFormatters: [
                  TextInputFormatter.withFunction((oldValue, newValue) {
                    LogicBloc.textBloc
                        .emit(GenerateInputState(generateInput: newValue.text));
                    return newValue;
                  }),
                ],
                // validator: (value) {
                //  if(value=='danial'){
                //    return 'validate';
                //  }
                //   return value;
                // },
                textAlign: TextAlign.left,
                controller: textEditingController,
                keyboardAppearance: Brightness.light,
                keyboardType: textInputType,
                textInputAction: textInputAction,
              )
            ],
          );
        },
        bloc: LogicBloc.textBloc,
      ),
    );
  }
}
