// ignore_for_file: non_constant_identifier_names

import 'package:flutter/services.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';

class TextFieldGenerated extends StatelessWidget {
  const TextFieldGenerated({super.key, required this.nameField, required this.errText, required this.textEditingController, required this.textInputType, required this.textInputAction, required this.titleField});
  final String nameField , errText ,titleField;
  final TextEditingController textEditingController ;
  final TextInputType textInputType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: nameField.toText(context: context,color: GenerateDataColors.grey_neutral.toHex,fontWeight: FontWeight.w500),
          ).toSpace(context: context,bottom: .01,top: .015),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                filled: true,
                fillColor: GenerateDataColors.white_neutral.toHex,
                enabled: true,
                hintText: titleField,
                hintStyle: ToStyle(fontSize: 14,color: GenerateDataColors.grey_neutral.toHex,fontWeight: FontWeight.w500),
                alignLabelWithHint: true,
                // disabledBorder: InputBorder.none,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(15)),
                isDense: true,
              errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:GenerateDataColors.red.toHex )),
              // errorText: 'danial',
              errorStyle: ToStyle(color: GenerateDataColors.red.toHex),
            ),
            inputFormatters: [
              TextInputFormatter.withFunction((oldValue, newValue) {
                print("old : $oldValue");
                print("new : $newValue");
                return newValue;

              }),
            ],
            validator: (value) {
              print(value);
              return null;
            },

            textAlign: TextAlign.left,
            controller: textEditingController,
            keyboardAppearance: Brightness.light,
            keyboardType:textInputType,
            textInputAction: textInputAction,
          )
        ],
      ),
    );
  }
}
