import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  MedicareAppointmentAuthUser? initialUser;
  MedicareAppointmentAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(MedicareAppointmentAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier, [Widget? entryPage]) =>
    GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? entryPage ?? const NavBarPage() : const LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? entryPage ?? const NavBarPage()
              : const LoginWidget(),
        ),
        FFRoute(
          name: 'resetPassword',
          path: '/resetPassword',
          builder: (context, params) => const ResetPasswordWidget(),
        ),
        FFRoute(
          name: 'registerAccount',
          path: '/registerAccount',
          builder: (context, params) => const RegisterAccountWidget(),
        ),
        FFRoute(
          name: 'detailNotificationAppointment',
          path: '/detailNotificationAppointment',
          builder: (context, params) => DetailNotificationAppointmentWidget(
            record: params.getParam(
              'record',
              ParamType.DataStruct,
              isList: false,
              structBuilder: RecordStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'listAppointment',
          path: '/listAppointment',
          builder: (context, params) => const ListAppointmentWidget(),
        ),
        FFRoute(
          name: 'detailAppointment',
          path: '/detailAppointment',
          builder: (context, params) => DetailAppointmentWidget(
            record: params.getParam(
              'record',
              ParamType.DataStruct,
              isList: false,
              structBuilder: RecordStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'bookExamination',
          path: '/bookExamination',
          builder: (context, params) => const BookExaminationWidget(),
        ),
        FFRoute(
          name: 'infoBookAppointment',
          path: '/infoBookAppointment',
          builder: (context, params) => InfoBookAppointmentWidget(
            patientCode: params.getParam(
              'patientCode',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'createOldPatient',
          path: '/createOldPatient',
          builder: (context, params) => const CreateOldPatientWidget(),
        ),
        FFRoute(
          name: 'createNewPatient',
          path: '/createNewPatient',
          builder: (context, params) => const CreateNewPatientWidget(),
        ),
        FFRoute(
          name: 'getSTT',
          path: '/getSTT',
          builder: (context, params) => const GetSTTWidget(),
        ),
        FFRoute(
          name: 'infoAccount',
          path: '/infoAccount',
          builder: (context, params) => const InfoAccountWidget(),
        ),
        FFRoute(
          name: 'forgotPasswordPhoneNumber',
          path: '/forgotPasswordPhoneNumber',
          builder: (context, params) => const ForgotPasswordPhoneNumberWidget(),
        ),
        FFRoute(
          name: 'extensionExamination',
          path: '/extensionExamination',
          builder: (context, params) => ExtensionExaminationWidget(
            patientCode: params.getParam(
              'patientCode',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'historyExamination',
          path: '/historyExamination',
          builder: (context, params) => const HistoryExaminationWidget(),
        ),
        FFRoute(
          name: 'medicalRecord',
          path: '/medicalRecord',
          builder: (context, params) => MedicalRecordWidget(
            examination: params.getParam(
              'examination',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ExaminationStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'forgotPasswordNewPassword',
          path: '/forgotPasswordNewPassword',
          builder: (context, params) => ForgotPasswordNewPasswordWidget(
            phoneNumberOTP: params.getParam(
              'phoneNumberOTP',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'forgotPasswordOTP',
          path: '/forgotPasswordOTP',
          builder: (context, params) => ForgotPasswordOTPWidget(
            phoneNumberOTP: params.getParam(
              'phoneNumberOTP',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'listPatient',
          path: '/listPatient',
          builder: (context, params) => const ListPatientWidget(),
        ),
        FFRoute(
          name: 'detailPatient',
          path: '/detailPatient',
          builder: (context, params) => DetailPatientWidget(
            patientSelected: params.getParam(
              'patientSelected',
              ParamType.DataStruct,
              isList: false,
              structBuilder: PatientStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'editInfoPatient',
          path: '/editInfoPatient',
          builder: (context, params) => EditInfoPatientWidget(
            patientDetailed: params.getParam(
              'patientDetailed',
              ParamType.DataStruct,
              isList: false,
              structBuilder: PatientStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'payment',
          path: '/payment',
          builder: (context, params) => PaymentWidget(
            date: params.getParam(
              'date',
              ParamType.String,
            ),
            time: params.getParam(
              'time',
              ParamType.String,
            ),
            patientCode: params.getParam(
              'patientCode',
              ParamType.String,
            ),
            reasonForVisit: params.getParam(
              'reasonForVisit',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'paymentOTP',
          path: '/paymentOTP',
          builder: (context, params) => PaymentOTPWidget(
            detail: params.getParam(
              'detail',
              ParamType.String,
            ),
            patientCode: params.getParam(
              'patientCode',
              ParamType.String,
            ),
            examDate: params.getParam(
              'examDate',
              ParamType.String,
            ),
            examTime: params.getParam(
              'examTime',
              ParamType.String,
            ),
            reasonForVisit: params.getParam(
              'reasonForVisit',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'paymentSuccessful',
          path: '/paymentSuccessful',
          builder: (context, params) => PaymentSuccessfulWidget(
            detail: params.getParam(
              'detail',
              ParamType.String,
            ),
            record: params.getParam(
              'record',
              ParamType.DataStruct,
              isList: false,
              structBuilder: RecordStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'notificationPage',
          path: '/notificationPage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'notificationPage')
              : const NotificationPageWidget(),
        ),
        FFRoute(
          name: 'homePage',
          path: '/homePage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'homePage')
              : const HomePageWidget(),
        ),
        FFRoute(
          name: 'extensionPage',
          path: '/extensionPage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'extensionPage')
              : const ExtensionPageWidget(),
        ),
        FFRoute(
          name: 'accountPage',
          path: '/accountPage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'accountPage')
              : const AccountPageWidget(),
        ),
        FFRoute(
          name: 'article',
          path: '/article',
          builder: (context, params) => const ArticleWidget(),
        ),
        FFRoute(
          name: 'detailResultAppointment',
          path: '/detailResultAppointment',
          builder: (context, params) => DetailResultAppointmentWidget(
            record: params.getParam(
              'record',
              ParamType.DataStruct,
              isList: false,
              structBuilder: RecordStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'addressHospital',
          path: '/addressHospital',
          builder: (context, params) => const AddressHospitalWidget(),
        ),
        FFRoute(
          name: 'chatbotSupport',
          path: '/chatbotSupport',
          builder: (context, params) => const ChatbotSupportWidget(),
        ),
        FFRoute(
          name: 'pageResultAppointment',
          path: '/pageResultAppointment',
          builder: (context, params) => PageResultAppointmentWidget(
            record: params.getParam(
              'record',
              ParamType.DataStruct,
              isList: false,
              structBuilder: RecordStruct.fromSerializableMap,
            ),
            status: params.getParam(
              'status',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'readme',
          path: '/readme',
          builder: (context, params) => const ReadmeWidget(),
        ),
        FFRoute(
          name: 'instruction',
          path: '/instruction',
          builder: (context, params) => const InstructionWidget(),
        ),
        FFRoute(
          name: 'optionPayment',
          path: '/optionPayment',
          builder: (context, params) => OptionPaymentWidget(
            date: params.getParam(
              'date',
              ParamType.String,
            ),
            time: params.getParam(
              'time',
              ParamType.String,
            ),
            patientCode: params.getParam(
              'patientCode',
              ParamType.String,
            ),
            reasonForVisit: params.getParam(
              'reasonForVisit',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'paymentBank',
          path: '/paymentBank',
          builder: (context, params) => PaymentBankWidget(
            date: params.getParam(
              'date',
              ParamType.String,
            ),
            time: params.getParam(
              'time',
              ParamType.String,
            ),
            patientCode: params.getParam(
              'patientCode',
              ParamType.String,
            ),
            reasonForVist: params.getParam(
              'reasonForVist',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  child: Image.asset(
                    'assets/images/icons8-hospital-100.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.rightToLeft,
        duration: Duration(milliseconds: 300),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}