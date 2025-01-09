// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Accept`
  String get bAccept {
    return Intl.message(
      'Accept',
      name: 'bAccept',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get bCopy {
    return Intl.message(
      'Copy',
      name: 'bCopy',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get bLogin {
    return Intl.message(
      'Login',
      name: 'bLogin',
      desc: '',
      args: [],
    );
  }

  /// `Update user`
  String get bProfile {
    return Intl.message(
      'Update user',
      name: 'bProfile',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get cActive {
    return Intl.message(
      'Active',
      name: 'cActive',
      desc: '',
      args: [],
    );
  }

  /// `Admin`
  String get cAdmin {
    return Intl.message(
      'Admin',
      name: 'cAdmin',
      desc: '',
      args: [],
    );
  }

  /// `Asociated`
  String get cAsociated {
    return Intl.message(
      'Asociated',
      name: 'cAsociated',
      desc: '',
      args: [],
    );
  }

  /// `Assemblies`
  String get cAssemblies {
    return Intl.message(
      'Assemblies',
      name: 'cAssemblies',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get cCanceled {
    return Intl.message(
      'Canceled',
      name: 'cCanceled',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get cChangePassword {
    return Intl.message(
      'Change Password',
      name: 'cChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `Culture`
  String get cCulture {
    return Intl.message(
      'Culture',
      name: 'cCulture',
      desc: '',
      args: [],
    );
  }

  /// `Deleted`
  String get cDeleted {
    return Intl.message(
      'Deleted',
      name: 'cDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Don't notify`
  String get cDontNotify {
    return Intl.message(
      'Don\'t notify',
      name: 'cDontNotify',
      desc: '',
      args: [],
    );
  }

  /// `Each hour`
  String get cEachHour {
    return Intl.message(
      'Each hour',
      name: 'cEachHour',
      desc: '',
      args: [],
    );
  }

  /// `Each six hours`
  String get cEachSixHours {
    return Intl.message(
      'Each six hours',
      name: 'cEachSixHours',
      desc: '',
      args: [],
    );
  }

  /// `Editor`
  String get cEditor {
    return Intl.message(
      'Editor',
      name: 'cEditor',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get cEnglish {
    return Intl.message(
      'English',
      name: 'cEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get cExit {
    return Intl.message(
      'Exit',
      name: 'cExit',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get cExpired {
    return Intl.message(
      'Expired',
      name: 'cExpired',
      desc: '',
      args: [],
    );
  }

  /// `Inactive`
  String get cInactive {
    return Intl.message(
      'Inactive',
      name: 'cInactive',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get cInformation {
    return Intl.message(
      'Information',
      name: 'cInformation',
      desc: '',
      args: [],
    );
  }

  /// `Meetings`
  String get cMeetings {
    return Intl.message(
      'Meetings',
      name: 'cMeetings',
      desc: '',
      args: [],
    );
  }

  /// `Minutes`
  String get cMinutes {
    return Intl.message(
      'Minutes',
      name: 'cMinutes',
      desc: '',
      args: [],
    );
  }

  /// `Municipality`
  String get cMunicipality {
    return Intl.message(
      'Municipality',
      name: 'cMunicipality',
      desc: '',
      args: [],
    );
  }

  /// `Neighbour`
  String get cNeighbour {
    return Intl.message(
      'Neighbour',
      name: 'cNeighbour',
      desc: '',
      args: [],
    );
  }

  /// `new`
  String get cNew {
    return Intl.message(
      'new',
      name: 'cNew',
      desc: '',
      args: [],
    );
  }

  /// `New article`
  String get cNewArticle {
    return Intl.message(
      'New article',
      name: 'cNewArticle',
      desc: '',
      args: [],
    );
  }

  /// `Notícies`
  String get cNews {
    return Intl.message(
      'Notícies',
      name: 'cNews',
      desc: '',
      args: [],
    );
  }

  /// `Once a day`
  String get cOnceADay {
    return Intl.message(
      'Once a day',
      name: 'cOnceADay',
      desc: '',
      args: [],
    );
  }

  /// `Polices`
  String get cPolices {
    return Intl.message(
      'Polices',
      name: 'cPolices',
      desc: '',
      args: [],
    );
  }

  /// `Published`
  String get cPublished {
    return Intl.message(
      'Published',
      name: 'cPublished',
      desc: '',
      args: [],
    );
  }

  /// `Redaction`
  String get cRedaction {
    return Intl.message(
      'Redaction',
      name: 'cRedaction',
      desc: '',
      args: [],
    );
  }

  /// `Revision`
  String get cRevision {
    return Intl.message(
      'Revision',
      name: 'cRevision',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get cServices {
    return Intl.message(
      'Services',
      name: 'cServices',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get cSettings {
    return Intl.message(
      'Settings',
      name: 'cSettings',
      desc: '',
      args: [],
    );
  }

  /// `Spanish`
  String get cSpanish {
    return Intl.message(
      'Spanish',
      name: 'cSpanish',
      desc: '',
      args: [],
    );
  }

  /// `Suspended`
  String get cSuspended {
    return Intl.message(
      'Suspended',
      name: 'cSuspended',
      desc: '',
      args: [],
    );
  }

  /// `Twice daily`
  String get cTwiceDaily {
    return Intl.message(
      'Twice daily',
      name: 'cTwiceDaily',
      desc: '',
      args: [],
    );
  }

  /// `Urbanization`
  String get cUrbanization {
    return Intl.message(
      'Urbanization',
      name: 'cUrbanization',
      desc: '',
      args: [],
    );
  }

  /// `Users list`
  String get cUsersList {
    return Intl.message(
      'Users list',
      name: 'cUsersList',
      desc: '',
      args: [],
    );
  }

  /// `Valencian`
  String get cValencian {
    return Intl.message(
      'Valencian',
      name: 'cValencian',
      desc: '',
      args: [],
    );
  }

  /// `Error when check login`
  String get eErrorWhenCheckLogin {
    return Intl.message(
      'Error when check login',
      name: 'eErrorWhenCheckLogin',
      desc: '',
      args: [],
    );
  }

  /// `EEEE, MMMM dd, yyyy`
  String get fDateFormat {
    return Intl.message(
      'EEEE, MMMM dd, yyyy',
      name: 'fDateFormat',
      desc: '',
      args: [],
    );
  }

  /// `Enter the abstract title`
  String get hAbstractArticle {
    return Intl.message(
      'Enter the abstract title',
      name: 'hAbstractArticle',
      desc: '',
      args: [],
    );
  }

  /// `Select one category`
  String get hArticleCategory {
    return Intl.message(
      'Select one category',
      name: 'hArticleCategory',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get hArticleState {
    return Intl.message(
      'State',
      name: 'hArticleState',
      desc: '',
      args: [],
    );
  }

  /// `Choose Language`
  String get hChooseLanguage {
    return Intl.message(
      'Choose Language',
      name: 'hChooseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Select User Profile`
  String get hChooseProfile {
    return Intl.message(
      'Select User Profile',
      name: 'hChooseProfile',
      desc: '',
      args: [],
    );
  }

  /// `Select User Status`
  String get hChooseStatus {
    return Intl.message(
      'Select User Status',
      name: 'hChooseStatus',
      desc: '',
      args: [],
    );
  }

  /// `Notify at least ...`
  String get hIntIntervalNotification {
    return Intl.message(
      'Notify at least ...',
      name: 'hIntIntervalNotification',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get hPassword {
    return Intl.message(
      'Password',
      name: 'hPassword',
      desc: '',
      args: [],
    );
  }

  /// `Question for retrieve user`
  String get hQuestion {
    return Intl.message(
      'Question for retrieve user',
      name: 'hQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Select one asociation`
  String get hSelectAsociation {
    return Intl.message(
      'Select one asociation',
      name: 'hSelectAsociation',
      desc: '',
      args: [],
    );
  }

  /// `Enter the article title`
  String get hTitleArticle {
    return Intl.message(
      'Enter the article title',
      name: 'hTitleArticle',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get hUserName {
    return Intl.message(
      'User name',
      name: 'hUserName',
      desc: '',
      args: [],
    );
  }

  /// `Abstract`
  String get iAbstractArticle {
    return Intl.message(
      'Abstract',
      name: 'iAbstractArticle',
      desc: '',
      args: [],
    );
  }

  /// `Please, select one category`
  String get iselectCategory {
    return Intl.message(
      'Please, select one category',
      name: 'iselectCategory',
      desc: '',
      args: [],
    );
  }

  /// `Please, Select Idioma`
  String get iSelectIdioma {
    return Intl.message(
      'Please, Select Idioma',
      name: 'iSelectIdioma',
      desc: '',
      args: [],
    );
  }

  /// `Please, Select Profile`
  String get iSelectProfile {
    return Intl.message(
      'Please, Select Profile',
      name: 'iSelectProfile',
      desc: '',
      args: [],
    );
  }

  /// `Select his state`
  String get iSelectState {
    return Intl.message(
      'Select his state',
      name: 'iSelectState',
      desc: '',
      args: [],
    );
  }

  /// `Please, Select Status`
  String get iSelectStatus {
    return Intl.message(
      'Please, Select Status',
      name: 'iSelectStatus',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get iTitleArticle {
    return Intl.message(
      'Title',
      name: 'iTitleArticle',
      desc: '',
      args: [],
    );
  }

  /// `Answer Key`
  String get lAnswerKey {
    return Intl.message(
      'Answer Key',
      name: 'lAnswerKey',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get lArticleCategory {
    return Intl.message(
      'Category',
      name: 'lArticleCategory',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get lArticleState {
    return Intl.message(
      'State',
      name: 'lArticleState',
      desc: '',
      args: [],
    );
  }

  /// `Subcategory`
  String get lArticleSubcategory {
    return Intl.message(
      'Subcategory',
      name: 'lArticleSubcategory',
      desc: '',
      args: [],
    );
  }

  /// `Asociation`
  String get lAsociation {
    return Intl.message(
      'Asociation',
      name: 'lAsociation',
      desc: '',
      args: [],
    );
  }

  /// `Choose how to recover the key`
  String get lChooseRetrieve {
    return Intl.message(
      'Choose how to recover the key',
      name: 'lChooseRetrieve',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get lDate {
    return Intl.message(
      'Date',
      name: 'lDate',
      desc: '',
      args: [],
    );
  }

  /// `Effective date`
  String get lEffectiveDate {
    return Intl.message(
      'Effective date',
      name: 'lEffectiveDate',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get lEmail {
    return Intl.message(
      'Email',
      name: 'lEmail',
      desc: '',
      args: [],
    );
  }

  /// `Notification Interval`
  String get lIntervalNotification {
    return Intl.message(
      'Notification Interval',
      name: 'lIntervalNotification',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get lLanguage {
    return Intl.message(
      'Language',
      name: 'lLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get lPassword {
    return Intl.message(
      'Password',
      name: 'lPassword',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get lProfile {
    return Intl.message(
      'Profile',
      name: 'lProfile',
      desc: '',
      args: [],
    );
  }

  /// `Publication date`
  String get lPublicationDate {
    return Intl.message(
      'Publication date',
      name: 'lPublicationDate',
      desc: '',
      args: [],
    );
  }

  /// `Question`
  String get lQuestion {
    return Intl.message(
      'Question',
      name: 'lQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get lStatus {
    return Intl.message(
      'Status',
      name: 'lStatus',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get lUserName {
    return Intl.message(
      'User name',
      name: 'lUserName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your answer key`
  String get mAnswerKey {
    return Intl.message(
      'Enter your answer key',
      name: 'mAnswerKey',
      desc: '',
      args: [],
    );
  }

  /// `User could not be registered`
  String get mCantRegister {
    return Intl.message(
      'User could not be registered',
      name: 'mCantRegister',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get mCopy {
    return Intl.message(
      'Copy',
      name: 'mCopy',
      desc: '',
      args: [],
    );
  }

  /// `Expired Session`
  String get mExpiredtoken {
    return Intl.message(
      'Expired Session',
      name: 'mExpiredtoken',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get mForgotPassword {
    return Intl.message(
      'Forgot password',
      name: 'mForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Had you any account`
  String get mHaveAccount {
    return Intl.message(
      'Had you any account',
      name: 'mHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter your user name`
  String get mInputUser {
    return Intl.message(
      'Enter your user name',
      name: 'mInputUser',
      desc: '',
      args: [],
    );
  }

  /// `Start a new session again`
  String get mLoginIn {
    return Intl.message(
      'Start a new session again',
      name: 'mLoginIn',
      desc: '',
      args: [],
    );
  }

  /// `The password must have at least 6 characters`
  String get mMinPassword {
    return Intl.message(
      'The password must have at least 6 characters',
      name: 'mMinPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get mNewPassword {
    return Intl.message(
      'New Password',
      name: 'mNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Use the new password for login`
  String get mNewPassword2 {
    return Intl.message(
      'Use the new password for login',
      name: 'mNewPassword2',
      desc: '',
      args: [],
    );
  }

  /// `Update not done`
  String get mNoRefresh {
    return Intl.message(
      'Update not done',
      name: 'mNoRefresh',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error while updating`
  String get mNoScriptAvailable {
    return Intl.message(
      'Unexpected error while updating',
      name: 'mNoScriptAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account`
  String get mNotAccount {
    return Intl.message(
      'Don\'t have an account',
      name: 'mNotAccount',
      desc: '',
      args: [],
    );
  }

  /// `Profile update not done`
  String get mNoUpdateProfile {
    return Intl.message(
      'Profile update not done',
      name: 'mNoUpdateProfile',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Password`
  String get mPassword {
    return Intl.message(
      'Enter your Password',
      name: 'mPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please Select Asociation`
  String get mPleaseSelectAsociation {
    return Intl.message(
      'Please Select Asociation',
      name: 'mPleaseSelectAsociation',
      desc: '',
      args: [],
    );
  }

  /// `Enter a question you remember to recover the user`
  String get mQuestion {
    return Intl.message(
      'Enter a question you remember to recover the user',
      name: 'mQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get mRegister {
    return Intl.message(
      'Register',
      name: 'mRegister',
      desc: '',
      args: [],
    );
  }

  /// `Retrieve Password`
  String get mRetrievePassword {
    return Intl.message(
      'Retrieve Password',
      name: 'mRetrievePassword',
      desc: '',
      args: [],
    );
  }

  /// `New password sent to your email`
  String get mRetrievePassword1 {
    return Intl.message(
      'New password sent to your email',
      name: 'mRetrievePassword1',
      desc: '',
      args: [],
    );
  }

  /// `Follow the instructions in the email`
  String get mRetrievePassword2 {
    return Intl.message(
      'Follow the instructions in the email',
      name: 'mRetrievePassword2',
      desc: '',
      args: [],
    );
  }

  /// `Retrieve Question`
  String get mRetrieveQuestion {
    return Intl.message(
      'Retrieve Question',
      name: 'mRetrieveQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Retrieve User`
  String get mRetrieveUser {
    return Intl.message(
      'Retrieve User',
      name: 'mRetrieveUser',
      desc: '',
      args: [],
    );
  }

  /// `Select one Asociation`
  String get mSelectAsociation {
    return Intl.message(
      'Select one Asociation',
      name: 'mSelectAsociation',
      desc: '',
      args: [],
    );
  }

  /// `Please select a date`
  String get mSelectDate {
    return Intl.message(
      'Please select a date',
      name: 'mSelectDate',
      desc: '',
      args: [],
    );
  }

  /// `Select one question`
  String get mSelectQuestion {
    return Intl.message(
      'Select one question',
      name: 'mSelectQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error`
  String get mUnexpectedError {
    return Intl.message(
      'Unexpected error',
      name: 'mUnexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `User not found`
  String get mUserNotFound {
    return Intl.message(
      'User not found',
      name: 'mUserNotFound',
      desc: '',
      args: [],
    );
  }

  /// `No user was found with that data`
  String get mUserQuestionDataNotFound {
    return Intl.message(
      'No user was found with that data',
      name: 'mUserQuestionDataNotFound',
      desc: '',
      args: [],
    );
  }

  /// `No user found with that question`
  String get mUserQuestionNotFound {
    return Intl.message(
      'No user found with that question',
      name: 'mUserQuestionNotFound',
      desc: '',
      args: [],
    );
  }

  /// `With email`
  String get mWithEmail {
    return Intl.message(
      'With email',
      name: 'mWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `With question`
  String get mWithQuestion {
    return Intl.message(
      'With question',
      name: 'mWithQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get tAlert {
    return Intl.message(
      'Alert',
      name: 'tAlert',
      desc: '',
      args: [],
    );
  }

  /// `Article`
  String get tArticle {
    return Intl.message(
      'Article',
      name: 'tArticle',
      desc: '',
      args: [],
    );
  }

  /// `Articles`
  String get tArticles {
    return Intl.message(
      'Articles',
      name: 'tArticles',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get tLogin {
    return Intl.message(
      'Login',
      name: 'tLogin',
      desc: '',
      args: [],
    );
  }

  /// `Questions`
  String get tQuestions {
    return Intl.message(
      'Questions',
      name: 'tQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Register User`
  String get tRegisterUser {
    return Intl.message(
      'Register User',
      name: 'tRegisterUser',
      desc: '',
      args: [],
    );
  }

  /// `Users list`
  String get tUserList {
    return Intl.message(
      'Users list',
      name: 'tUserList',
      desc: '',
      args: [],
    );
  }

  /// `User Profile`
  String get tUserProfile {
    return Intl.message(
      'User Profile',
      name: 'tUserProfile',
      desc: '',
      args: [],
    );
  }

  /// `Retrieve User data`
  String get tUserRetrieve {
    return Intl.message(
      'Retrieve User data',
      name: 'tUserRetrieve',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to App`
  String get tWelcom {
    return Intl.message(
      'Welcome to App',
      name: 'tWelcom',
      desc: '',
      args: [],
    );
  }

  /// `Enter your user name and password\nto connect to your account*`
  String get tWelcomLogin {
    return Intl.message(
      'Enter your user name and password\nto connect to your account*',
      name: 'tWelcomLogin',
      desc: '',
      args: [],
    );
  }

  /// `Fill fields required\nand create your account`
  String get tWelcomRegister {
    return Intl.message(
      'Fill fields required\nand create your account',
      name: 'tWelcomRegister',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
