// todo => Screen Register


import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
          margin:const EdgeInsets.fromLTRB(10, 10, 0, 10),
          alignment: Alignment.center,
          height: 30,
          width: 20,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(10)
          ),
          child: SvgPicture.asset("assets/icons/loginScreen/Arrow-Left.svg"),//  <----- create  url to Mixin and Svg to Extension
        ),
        title: context.toAppLocalization.register.toText(context: context),
        centerTitle: true,
      ),
      backgroundColor: context.toTheme.colorScheme.background,
      body: const SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
