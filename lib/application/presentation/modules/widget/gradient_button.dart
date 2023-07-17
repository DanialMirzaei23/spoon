import 'package:spoon/application/packages/package.dart';

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
      width: 300,
      height: 50,
      child: InkWell(
        borderRadius: BorderRadius.circular(17.0),
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
              gradient: Theme.of(context).extension<GradientExtension>()?.primaryGradient,
              borderRadius: BorderRadius.circular(17.0)),
          child: Container(
            alignment: Alignment.center,
            child: this.child,
          ),
        ),
      ),
    );
  }
}
