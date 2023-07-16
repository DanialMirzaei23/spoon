import 'package:flutter/material.dart';
import '../../themes/themes.dart';

///
/// A very simple gradient button but powerful, we will advance this with this structure,
/// an inkwell with ink is better than any other way.
///

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  final Function()? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPressed,
        child: Ink(
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 1),
                  blurRadius: 2.0,
                ),
              ],
              gradient:
                  Theme.of(context).extension<GradientExtension>()!.gradient1,
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: this.child,
          ),
        ),
      ),
    );
  }
}
