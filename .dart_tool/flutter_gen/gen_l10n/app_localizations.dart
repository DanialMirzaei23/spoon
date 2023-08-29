import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fa.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fa')
  ];

  /// No description provided for @slider_one.
  ///
  /// In en, this message translates to:
  /// **'Contains variety\nof'**
  String get slider_one;

  /// No description provided for @slider_tow.
  ///
  /// In en, this message translates to:
  /// **'Update the latest\n'**
  String get slider_tow;

  /// No description provided for @slider_tree.
  ///
  /// In en, this message translates to:
  /// **'Many'**
  String get slider_tree;

  /// No description provided for @choices_s_one.
  ///
  /// In en, this message translates to:
  /// **'CHOICES'**
  String get choices_s_one;

  /// No description provided for @trends_s_tow.
  ///
  /// In en, this message translates to:
  /// **'TRENDS'**
  String get trends_s_tow;

  /// No description provided for @vouchers.
  ///
  /// In en, this message translates to:
  /// **'VOUCHERS'**
  String get vouchers;

  /// No description provided for @newbie_s_tree.
  ///
  /// In en, this message translates to:
  /// **'for newbie'**
  String get newbie_s_tree;

  /// No description provided for @get_start.
  ///
  /// In en, this message translates to:
  /// **'Get Start'**
  String get get_start;

  /// No description provided for @spoon.
  ///
  /// In en, this message translates to:
  /// **'Spoon'**
  String get spoon;

  /// No description provided for @continue_with_Google.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get continue_with_Google;

  /// No description provided for @continue_with_Facebook.
  ///
  /// In en, this message translates to:
  /// **'Continue with Facebook'**
  String get continue_with_Facebook;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @confused_about_your_slider_description_one.
  ///
  /// In en, this message translates to:
  /// **'Confused about your outfit?\nDon’t worry! Find the best here'**
  String get confused_about_your_slider_description_one;

  /// No description provided for @confused_about_your_slider_description_tow.
  ///
  /// In en, this message translates to:
  /// **'Confused about your outfit?\nDon’t worry! Find the best here'**
  String get confused_about_your_slider_description_tow;

  /// No description provided for @confused_about_your_slider_description_tree.
  ///
  /// In en, this message translates to:
  /// **'Confused about your outfit?\nDon’t worry! Find the best here'**
  String get confused_about_your_slider_description_tree;

  /// No description provided for @skip_next_button.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip_next_button;

  /// No description provided for @next_button.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next_button;

  /// No description provided for @enter_your_email.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enter_your_email;

  /// No description provided for @enter_your_password.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enter_your_password;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'password'**
  String get password;

  /// No description provided for @forgot_your_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get forgot_your_password;

  /// No description provided for @dont_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get dont_have_an_account;

  /// No description provided for @log_In.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get log_In;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forgot_password;

  /// No description provided for @try_another_way.
  ///
  /// In en, this message translates to:
  /// **'Try another way'**
  String get try_another_way;

  /// No description provided for @enter_the_email_address_or_associated_with_your_account.
  ///
  /// In en, this message translates to:
  /// **'Enter the email address or associated with your account'**
  String get enter_the_email_address_or_associated_with_your_account;

  /// No description provided for @reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get reset_password;

  /// No description provided for @please_enter_the_4_digit_code_sent_to.
  ///
  /// In en, this message translates to:
  /// **'Please enter the 4 digit code sent to'**
  String get please_enter_the_4_digit_code_sent_to;

  /// No description provided for @resend_code.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get resend_code;

  /// No description provided for @verify_account.
  ///
  /// In en, this message translates to:
  /// **'Verify Account'**
  String get verify_account;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get full_name;

  /// No description provided for @your_password_must_be_8_or_more_character_long.
  ///
  /// In en, this message translates to:
  /// **'Your password must be 8 or more character long'**
  String get your_password_must_be_8_or_more_character_long;

  /// No description provided for @enter_your_full_name.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get enter_your_full_name;

  /// No description provided for @create_account.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get create_account;

  /// No description provided for @by_signing_up_agree_to_these.
  ///
  /// In en, this message translates to:
  /// **'By signing up,  agree to these'**
  String get by_signing_up_agree_to_these;

  /// No description provided for @conditions.
  ///
  /// In en, this message translates to:
  /// **'Conditions'**
  String get conditions;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @terms_of_use.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get terms_of_use;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success Thank You'**
  String get success;

  /// No description provided for @the_email_is_incorrect.
  ///
  /// In en, this message translates to:
  /// **'The email is incorrect'**
  String get the_email_is_incorrect;

  /// No description provided for @good_email.
  ///
  /// In en, this message translates to:
  /// **'keep going like this'**
  String get good_email;

  /// No description provided for @my_orders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get my_orders;

  /// No description provided for @there_is_no_order_yet.
  ///
  /// In en, this message translates to:
  /// **'There\'s no order yet!'**
  String get there_is_no_order_yet;

  /// No description provided for @back_to_home.
  ///
  /// In en, this message translates to:
  /// **'Back To Home'**
  String get back_to_home;

  /// No description provided for @order_id.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get order_id;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'products'**
  String get products;

  /// No description provided for @product.
  ///
  /// In en, this message translates to:
  /// **'product'**
  String get product;

  /// No description provided for @size.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get size;

  /// No description provided for @color.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get color;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @order_status.
  ///
  /// In en, this message translates to:
  /// **'Order status'**
  String get order_status;

  /// No description provided for @order_placed.
  ///
  /// In en, this message translates to:
  /// **'Order placed'**
  String get order_placed;

  /// No description provided for @order_confirmed.
  ///
  /// In en, this message translates to:
  /// **'Order confirmed'**
  String get order_confirmed;

  /// No description provided for @order_processed.
  ///
  /// In en, this message translates to:
  /// **'Order processed'**
  String get order_processed;

  /// No description provided for @ready_to_ship.
  ///
  /// In en, this message translates to:
  /// **'Ready to ship'**
  String get ready_to_ship;

  /// No description provided for @out_to_delivery.
  ///
  /// In en, this message translates to:
  /// **'Out to deliery'**
  String get out_to_delivery;

  /// No description provided for @purchase_date.
  ///
  /// In en, this message translates to:
  /// **'Purchase date'**
  String get purchase_date;

  /// No description provided for @track_order.
  ///
  /// In en, this message translates to:
  /// **'Track order'**
  String get track_order;

  /// No description provided for @beautiful_clothes.
  ///
  /// In en, this message translates to:
  /// **'Beautiful Clothes'**
  String get beautiful_clothes;

  /// No description provided for @the_joy_of_premium_fashion.
  ///
  /// In en, this message translates to:
  /// **'The joy of premium fashion'**
  String get the_joy_of_premium_fashion;

  /// No description provided for @buy_now.
  ///
  /// In en, this message translates to:
  /// **'Buy Now'**
  String get buy_now;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'reviews'**
  String get reviews;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @read_more.
  ///
  /// In en, this message translates to:
  /// **'Read more'**
  String get read_more;

  /// No description provided for @add_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Add To Cart'**
  String get add_to_cart;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @items.
  ///
  /// In en, this message translates to:
  /// **'items'**
  String get items;

  /// No description provided for @item_total.
  ///
  /// In en, this message translates to:
  /// **'Item total'**
  String get item_total;

  /// No description provided for @shipping_fee.
  ///
  /// In en, this message translates to:
  /// **'Shipping fee'**
  String get shipping_fee;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @go_to_checkout.
  ///
  /// In en, this message translates to:
  /// **'Go To Checkout'**
  String get go_to_checkout;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fa'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fa': return AppLocalizationsFa();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
