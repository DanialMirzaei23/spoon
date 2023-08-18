import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/screen/exp_main_router.dart';

class StartUp extends StatelessWidget {
  const StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(GenerateCountry.EN),

      // Initial Router
      initialRoute: onGenerateRouters.onOrderStatus,

      // Data Router
      routes: {
        onGenerateRouters.onBoarding: (_) => const OnBoarding(),
        onGenerateRouters.onHome: (_) => const HomeScreen(),
        onGenerateRouters.onLogin: (_) => const LoginScreen(),
        onGenerateRouters.onRegister: (_) => const RegisterScreen(),
        onGenerateRouters.onForgetPassword: (_) => const ForgetPassword(),
        onGenerateRouters.onVerifyAccount: (_) => const VerifyAccount(),
        onGenerateRouters.onOrders: (_) => const OrdersScreen(),
        onGenerateRouters.onOrderStatus: (_) => const OrderStatusScreen(),
      },
      // Theme Default Mode
      theme: lightTheme.copyWith(
          pageTransitionsTheme: const PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android:
                ZoomPageTransitionsBuilder(allowEnterRouteSnapshotting: true),
          })),
    );
  }
}
