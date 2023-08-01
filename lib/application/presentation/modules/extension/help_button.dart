
import '../../../packages/package.dart';

extension HelperButton on Widget{
  Widget generateButton({required void Function() onTap}) => InkWell(
    onTap: onTap,
    child: this,
  );
}