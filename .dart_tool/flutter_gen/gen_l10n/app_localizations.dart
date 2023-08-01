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
