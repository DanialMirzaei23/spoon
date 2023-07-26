// todo => Screen Home

import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: context.toAppLocalization.register.toText(context: context),
      ),
    );
  }
}
