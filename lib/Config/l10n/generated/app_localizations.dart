import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
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

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
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
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeBack;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Langauage'**
  String get language;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @mode.
  ///
  /// In en, this message translates to:
  /// **'Mode'**
  String get mode;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get or;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @egyptCountryCode.
  ///
  /// In en, this message translates to:
  /// **'+20  |  Phone number'**
  String get egyptCountryCode;

  /// No description provided for @saudiArabiaCountryCode.
  ///
  /// In en, this message translates to:
  /// **'+966  |  Phone number'**
  String get saudiArabiaCountryCode;

  /// No description provided for @enterEmaill.
  ///
  /// In en, this message translates to:
  /// **'Enter Email'**
  String get enterEmaill;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @remember.
  ///
  /// In en, this message translates to:
  /// **'Remember'**
  String get remember;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget Password'**
  String get forgetPassword;

  /// No description provided for @orLoginWith.
  ///
  /// In en, this message translates to:
  /// **'or login with'**
  String get orLoginWith;

  /// No description provided for @orSignUpWith.
  ///
  /// In en, this message translates to:
  /// **'or SignUp with'**
  String get orSignUpWith;

  /// No description provided for @facebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @apple.
  ///
  /// In en, this message translates to:
  /// **'Apple'**
  String get apple;

  /// No description provided for @signUpPage.
  ///
  /// In en, this message translates to:
  /// **'Sign Up Form Goes Here'**
  String get signUpPage;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password ?'**
  String get forgotPassword;

  /// No description provided for @enterPhoneNumberAssociated.
  ///
  /// In en, this message translates to:
  /// **'Enter the phone number associated'**
  String get enterPhoneNumberAssociated;

  /// No description provided for @withYourAccount.
  ///
  /// In en, this message translates to:
  /// **'with your account'**
  String get withYourAccount;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @dontHavePhone.
  ///
  /// In en, this message translates to:
  /// **'Don\'t Have phone ?'**
  String get dontHavePhone;

  /// No description provided for @dontHaveEmail.
  ///
  /// In en, this message translates to:
  /// **'Don\'t Have Email ?'**
  String get dontHaveEmail;

  /// No description provided for @tryAnotherWay.
  ///
  /// In en, this message translates to:
  /// **'Try another way'**
  String get tryAnotherWay;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @verifyLater.
  ///
  /// In en, this message translates to:
  /// **'Verify Later'**
  String get verifyLater;

  /// No description provided for @verificationCode.
  ///
  /// In en, this message translates to:
  /// **'Verification Code'**
  String get verificationCode;

  /// No description provided for @pleaseEnter5DigitalCodeSendTo.
  ///
  /// In en, this message translates to:
  /// **'Please Enter 5 digital code send to'**
  String get pleaseEnter5DigitalCodeSendTo;

  /// No description provided for @appgmailcom.
  ///
  /// In en, this message translates to:
  /// **'APP@gmail.com'**
  String get appgmailcom;

  /// No description provided for @enterYourCode.
  ///
  /// In en, this message translates to:
  /// **'Enter your Code'**
  String get enterYourCode;

  /// No description provided for @dontReceiveACode.
  ///
  /// In en, this message translates to:
  /// **'Don\'t Receive a code?'**
  String get dontReceiveACode;

  /// No description provided for @requestPhoneCall.
  ///
  /// In en, this message translates to:
  /// **'Request phone call'**
  String get requestPhoneCall;

  /// No description provided for @resendIn60s.
  ///
  /// In en, this message translates to:
  /// **'Resend in 60s'**
  String get resendIn60s;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @default_.
  ///
  /// In en, this message translates to:
  /// **'default'**
  String get default_;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @morocco.
  ///
  /// In en, this message translates to:
  /// **'Morocco'**
  String get morocco;

  /// No description provided for @kuwait.
  ///
  /// In en, this message translates to:
  /// **'Kuwait'**
  String get kuwait;

  /// No description provided for @egypt.
  ///
  /// In en, this message translates to:
  /// **'Egypt'**
  String get egypt;

  /// No description provided for @syrianArab.
  ///
  /// In en, this message translates to:
  /// **'Syrian Arab'**
  String get syrianArab;

  /// No description provided for @unitedArabEmirates.
  ///
  /// In en, this message translates to:
  /// **'United Arab Emirates'**
  String get unitedArabEmirates;

  /// No description provided for @saudiArabia.
  ///
  /// In en, this message translates to:
  /// **'Saudi Arabia (SA)'**
  String get saudiArabia;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @num0.
  ///
  /// In en, this message translates to:
  /// **'0'**
  String get num0;

  /// No description provided for @num1.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get num1;

  /// No description provided for @num2.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get num2;

  /// No description provided for @num3.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get num3;

  /// No description provided for @num4.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get num4;

  /// No description provided for @num5.
  ///
  /// In en, this message translates to:
  /// **'5'**
  String get num5;

  /// No description provided for @num6.
  ///
  /// In en, this message translates to:
  /// **'6'**
  String get num6;

  /// No description provided for @num7.
  ///
  /// In en, this message translates to:
  /// **'7'**
  String get num7;

  /// No description provided for @num8.
  ///
  /// In en, this message translates to:
  /// **'8'**
  String get num8;

  /// No description provided for @num9.
  ///
  /// In en, this message translates to:
  /// **'9'**
  String get num9;

  /// No description provided for @astric.
  ///
  /// In en, this message translates to:
  /// **'*'**
  String get astric;

  /// No description provided for @backSpace.
  ///
  /// In en, this message translates to:
  /// **'⌫'**
  String get backSpace;

  /// No description provided for @emailIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailIsRequired;

  /// No description provided for @invalidEmailSymbol.
  ///
  /// In en, this message translates to:
  /// **'Email must contain \'@\' symbol.'**
  String get invalidEmailSymbol;

  /// No description provided for @invalidEmailDomain.
  ///
  /// In en, this message translates to:
  /// **'Email must end with a valid domain (e.g., .com, .org).'**
  String get invalidEmailDomain;

  /// No description provided for @validateFailurEmail.
  ///
  /// In en, this message translates to:
  /// **'Error validating email: '**
  String get validateFailurEmail;

  /// No description provided for @phoneNumberIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone number is required'**
  String get phoneNumberIsRequired;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get invalidPhoneNumber;

  /// No description provided for @passwordIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordIsRequired;

  /// No description provided for @invalidPassword.
  ///
  /// In en, this message translates to:
  /// **'Invalid Password'**
  String get invalidPassword;

  /// No description provided for @validateFailurPassword.
  ///
  /// In en, this message translates to:
  /// **'Error validating password:'**
  String get validateFailurPassword;

  /// No description provided for @passwordLength8Character.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long.'**
  String get passwordLength8Character;

  /// No description provided for @passwordOneUpperCase.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one uppercase letter.'**
  String get passwordOneUpperCase;

  /// No description provided for @passwordOneLowerCase.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one lowercase letter.'**
  String get passwordOneLowerCase;

  /// No description provided for @passwordOneNumber.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one number.'**
  String get passwordOneNumber;

  /// No description provided for @passwordOneSpecialCharacter.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one special character.'**
  String get passwordOneSpecialCharacter;

  /// No description provided for @fullNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Full name is required.'**
  String get fullNameIsRequired;

  /// No description provided for @invalidFullName.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid full name.'**
  String get invalidFullName;

  /// No description provided for @validateFailureFullName.
  ///
  /// In en, this message translates to:
  /// **'Validation failed for full name:'**
  String get validateFailureFullName;

  /// No description provided for @invitationCode.
  ///
  /// In en, this message translates to:
  /// **'Invitation Code'**
  String get invitationCode;

  /// No description provided for @invitationCodeExample.
  ///
  /// In en, this message translates to:
  /// **'Ex: #Alsuisy123'**
  String get invitationCodeExample;

  /// No description provided for @paste.
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get paste;

  /// No description provided for @exElSuisy.
  ///
  /// In en, this message translates to:
  /// **'Ex el suisy'**
  String get exElSuisy;

  /// No description provided for @selectDate.
  ///
  /// In en, this message translates to:
  /// **'Select Date'**
  String get selectDate;

  /// No description provided for @selectBirthDate.
  ///
  /// In en, this message translates to:
  /// **'Select Birth date'**
  String get selectBirthDate;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @adham.
  ///
  /// In en, this message translates to:
  /// **'Adham'**
  String get adham;

  /// No description provided for @sentYouAnInvitationToJoin.
  ///
  /// In en, this message translates to:
  /// **'Sent you an invitation to join'**
  String get sentYouAnInvitationToJoin;

  /// No description provided for @yourContacts.
  ///
  /// In en, this message translates to:
  /// **'your contacts'**
  String get yourContacts;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// No description provided for @dayAgo1.
  ///
  /// In en, this message translates to:
  /// **'1 Day Ago'**
  String get dayAgo1;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @posts.
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get posts;

  /// No description provided for @reels.
  ///
  /// In en, this message translates to:
  /// **'Reels'**
  String get reels;

  /// No description provided for @users.
  ///
  /// In en, this message translates to:
  /// **'users'**
  String get users;

  /// No description provided for @pages.
  ///
  /// In en, this message translates to:
  /// **'Pages'**
  String get pages;

  /// No description provided for @groups.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get groups;

  /// No description provided for @threeHundred.
  ///
  /// In en, this message translates to:
  /// **'3,000,000'**
  String get threeHundred;

  /// No description provided for @le.
  ///
  /// In en, this message translates to:
  /// **'L.E'**
  String get le;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @audiRs7Quattro.
  ///
  /// In en, this message translates to:
  /// **'Audi Rs7 Quattro'**
  String get audiRs7Quattro;

  /// No description provided for @k5k10.
  ///
  /// In en, this message translates to:
  /// **'5k-10k'**
  String get k5k10;

  /// No description provided for @k2023.
  ///
  /// In en, this message translates to:
  /// **'2023'**
  String get k2023;

  /// No description provided for @used.
  ///
  /// In en, this message translates to:
  /// **'Used'**
  String get used;

  /// No description provided for @k800000.
  ///
  /// In en, this message translates to:
  /// **'800,000'**
  String get k800000;

  /// No description provided for @negotiation.
  ///
  /// In en, this message translates to:
  /// **'Negotiation'**
  String get negotiation;

  /// No description provided for @cairoEgypt.
  ///
  /// In en, this message translates to:
  /// **'Cairo, Egypt'**
  String get cairoEgypt;

  /// No description provided for @bmw320Model2019.
  ///
  /// In en, this message translates to:
  /// **'Bmw 320 model 2019'**
  String get bmw320Model2019;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @relatedResults.
  ///
  /// In en, this message translates to:
  /// **'Related results'**
  String get relatedResults;

  /// No description provided for @pets.
  ///
  /// In en, this message translates to:
  /// **'Pets'**
  String get pets;

  /// No description provided for @vehciles.
  ///
  /// In en, this message translates to:
  /// **'Vehciles'**
  String get vehciles;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
