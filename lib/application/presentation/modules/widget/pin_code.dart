import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/generateDataColors.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';

class PinCodeGenerate extends StatelessWidget {
  const PinCodeGenerate(
      {super.key,
      required this.validator,
      required this.onSave,
      required this.onTap,
      required this.textEditingController,
      this.hasBorder = false});
  final bool hasBorder;
  final String Function(String?) validator, onSave;
  final void Function() onTap;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      animationType: AnimationType.slide,
      animationCurve: Curves.linear,
      keyboardType: TextInputType.number,
      enableActiveFill: true,
      onTap: onTap,
      validator: validator,
      inputFormatters: [],
      textInputAction: TextInputAction.go,
      controller: textEditingController,
      onSaved: onSave,
      pastedTextStyle: ToStyle(),
      pinTheme: PinTheme(
          borderRadius: BorderRadius.circular(15.0),
          shape: PinCodeFieldShape.box,
          activeColor: context.toTheme.colorScheme.primary,
          disabledColor: Colors.transparent,
          inactiveColor: hasBorder
              ? GenerateDataColors.grey1_neutral.toHex
              : Colors.transparent,
          activeFillColor: context.toTheme.colorScheme.tertiary,
          inactiveFillColor: context.toTheme.colorScheme.tertiary,
          selectedFillColor: context.toTheme.colorScheme.tertiary,
          selectedColor: context.toTheme.colorScheme.primary),
    );
  }
}
