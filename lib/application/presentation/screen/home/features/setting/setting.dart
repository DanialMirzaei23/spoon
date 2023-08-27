import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';

import '../../../../../packages/package.dart';
import '../../../../modules/mixin/exp_main_router.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaScaffold.nonScaffold(
        context: context,
        child: "danial".toText(context: context),
        titleAppBar: "Setting",
        reActionIconAppBar: () {});
  }
}
