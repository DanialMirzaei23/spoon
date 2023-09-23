import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import 'package:spoon/application/presentation/screen/exp_main_router.dart';
import 'package:spoon/application/presentation/screen/home/features/categoriesScreen/categoriesContentScreen.dart';

class StartUp extends StatelessWidget {
  const StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(GenerateCountry.en),

      // Initial Router
      initialRoute: onGenerateRouters.onMap,

      // Data Router
      routes: {
        onGenerateRouters.onBoarding: (_) => const OnBoarding(),
        onGenerateRouters.onStream: (_) => const StreamScreen(),
        onGenerateRouters.onSetting: (_) => const Setting(),
        onGenerateRouters.onMap: (_) => const MapScreen(),
        onGenerateRouters.onHome: (_) => const HomeScreen(),
        onGenerateRouters.onFeedBack: (_) => const FeedBackScreen(),
        onGenerateRouters.onLogin: (_) => const LoginScreen(),
        onGenerateRouters.onRegister: (_) => const RegisterScreen(),
        onGenerateRouters.onForgetPassword: (_) => const ForgetPassword(),
        onGenerateRouters.onVerifyAccount: (_) => const VerifyAccount(),
        onGenerateRouters.onCheckOut: (_) => const CheckOutScreen(),
        onGenerateRouters.onShippingInformation: (_) => const ShippingInformationScreen(),
        onGenerateRouters.onPaymentMethods: (_) => const PaymentMethodsScreen(),
        onGenerateRouters.onPaymentSuccess: (_) => const PaymentSuccessScreen(),
        onGenerateRouters.onOrders: (_) => const OrdersScreen(),
        onGenerateRouters.onOrderStatus: (_) => const OrderStatusScreen(),
        onGenerateRouters.onProduct: (_) => const ProductScreen(),
        onGenerateRouters.onCart: (_) => const CartScreen(),
        onGenerateRouters.onSearch: (_) => const SearchScreen(),
        onGenerateRouters.onCategoriesContent: (_) => const CategoriesContentScreen(),
        onGenerateRouters.onReviews: (_) => const ReviewsScreen(),

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
