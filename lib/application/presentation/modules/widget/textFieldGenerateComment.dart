import 'package:flutter/services.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';
import '../mixin/exp_main_router.dart';

class TextFieldGenerateComment extends StatelessWidget {
  const TextFieldGenerateComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      child: TextFormField(
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        maxLines: 30,
        expands: false,
        minLines: 5,
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
          hintText: "Say something about our product (optional) ",
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
        ),
        inputFormatters: const [
          // TextInputFormatter.withFunction((oldValue, newValue) {
          //   LogicBloc.textBloc
          //       .emit(GenerateInputState(generateInput: newValue.text));
          //   return newValue;
          // }),
        ],
        // validator: (value) {
        //  if(value=='danial'){
        //    return 'validate';
        //  }
        //   return value;
        // },
        textAlign: TextAlign.left,
        // controller: textEditingController,
        keyboardAppearance: Brightness.light,
        // keyboardType: textInputType,
        // textInputAction: textInputAction,
      ),
    );
  }
}
