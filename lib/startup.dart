import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import 'package:spoon/application/presentation/screen/exp_main_router.dart';

class StartUp extends StatelessWidget {
  const StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(GenerateCountry.en),

      // Initial Router
      initialRoute: onGenerateRouters.onStream,

      // Data Router
      routes: {
        onGenerateRouters.onBoarding: (_) => const OnBoarding(),
        onGenerateRouters.onStream: (_) => const StreamScreen(),
        onGenerateRouters.onSetting: (_) => const Setting(),
        onGenerateRouters.onHome: (_) => const HomeScreen(),
        onGenerateRouters.onLogin: (_) => const LoginScreen(),
        onGenerateRouters.onRegister: (_) => const RegisterScreen(),
        onGenerateRouters.onForgetPassword: (_) => const ForgetPassword(),
        onGenerateRouters.onVerifyAccount: (_) => const VerifyAccount(),
        onGenerateRouters.onOrders: (_) => const OrdersScreen(),
        onGenerateRouters.onOrderStatus: (_) => const OrderStatusScreen(),
        onGenerateRouters.onProduct: (_) => const ProductScreen(),
        onGenerateRouters.onCart: (_) => const CartScreen(),
        onGenerateRouters.onSearch: (_) => const SearchScreen(),

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
