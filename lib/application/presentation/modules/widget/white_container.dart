import 'package:flutter/material.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

class WhiteContainerGenerated extends StatelessWidget {
  const WhiteContainerGenerated(
      {super.key, required this.child, this.hasShadow = false});
  final Widget child;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          if (hasShadow) ...{
            BoxShadow(
              blurRadius: 15,
              offset: const Offset(2, 16),
              color: GenerateDataColors.grey1_neutral.toHex,
            )
          }
        ],
        borderRadius: BorderRadius.circular(16),
        color: context.toTheme.colorScheme.primaryContainer,
      ),
      child: child,
    );
  }
}
