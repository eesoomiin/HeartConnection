import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

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

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
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

  void update(BaseAuthUser newUser) {
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

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LoginWidget(),
        ),
        FFRoute(
          name: 'home',
          path: '/home',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'home')
              : const NavBarPage(
                  initialPage: 'home',
                  page: HomeWidget(),
                ),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: LoginWidget(),
          ),
        ),
        FFRoute(
          name: 'CreateAccount',
          path: '/createAccount',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: CreateAccountWidget(),
          ),
        ),
        FFRoute(
          name: 'Totalwelfare',
          path: '/totalwelfare',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Totalwelfare')
              : const NavBarPage(
                  initialPage: 'Totalwelfare',
                  page: TotalwelfareWidget(),
                ),
        ),
        FFRoute(
          name: 'SelectWelfare',
          path: '/selectWelfare',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: SelectWelfareWidget(),
          ),
        ),
        FFRoute(
          name: 'content',
          path: '/content',
          asyncParams: {
            'detailwelfare': getDoc(['welfare'], WelfareRecord.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: ContentWidget(
              detailwelfare: params.getParam(
                'detailwelfare',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Totalwelfare2',
          path: '/totalwelfare2',
          asyncParams: {
            'welfare2':
                getDoc(['welfareType2'], WelfareType2Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Totalwelfare2Widget(
              welfare2: params.getParam(
                'welfare2',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'SelectWelfareMain',
          path: '/selectWelfareMain',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'SelectWelfareMain')
              : const NavBarPage(
                  initialPage: 'SelectWelfareMain',
                  page: SelectWelfareMainWidget(),
                ),
        ),
        FFRoute(
          name: 'Totalwelfare1',
          path: '/totalwelfare1',
          asyncParams: {
            'welfare1':
                getDoc(['welfareType1'], WelfareType1Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Totalwelfare1Widget(
              welfare1: params.getParam(
                'welfare1',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Totalwelfare3',
          path: '/totalwelfare3',
          asyncParams: {
            'welfare3':
                getDoc(['welfareType3'], WelfareType3Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Totalwelfare3Widget(
              welfare3: params.getParam(
                'welfare3',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Totalwelfare4',
          path: '/totalwelfare4',
          asyncParams: {
            'welfare4':
                getDoc(['welfareType4'], WelfareType4Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Totalwelfare4Widget(
              welfare4: params.getParam(
                'welfare4',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Totalwelfare5',
          path: '/totalwelfare5',
          asyncParams: {
            'welfare5':
                getDoc(['welfareType5'], WelfareType5Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Totalwelfare5Widget(
              welfare5: params.getParam(
                'welfare5',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Totalwelfare6',
          path: '/totalwelfare6',
          asyncParams: {
            'welfare6':
                getDoc(['welfareType6'], WelfareType6Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Totalwelfare6Widget(
              welfare6: params.getParam(
                'welfare6',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Totalwelfare7',
          path: '/totalwelfare7',
          asyncParams: {
            'welfare7':
                getDoc(['welfareType7'], WelfareType7Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Totalwelfare7Widget(
              welfare7: params.getParam(
                'welfare7',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Totalwelfare8',
          path: '/totalwelfare8',
          asyncParams: {
            'welfare8':
                getDoc(['welfareType8'], WelfareType8Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Totalwelfare8Widget(
              welfare8: params.getParam(
                'welfare8',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Findwelfarecenter',
          path: '/findwelfarecenter',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Findwelfarecenter')
              : const NavBarPage(
                  initialPage: 'Findwelfarecenter',
                  page: FindwelfarecenterWidget(),
                ),
        ),
        FFRoute(
          name: 'Findwelfarecenter1',
          path: '/findwelfarecenter1',
          asyncParams: {
            'center1': getDoc(['centerType1'], CenterType1Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Findwelfarecenter1Widget(
              center1: params.getParam(
                'center1',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Findwelfarecenter2',
          path: '/findwelfarecenter2',
          asyncParams: {
            'center2': getDoc(['centerType2'], CenterType2Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Findwelfarecenter2Widget(
              center2: params.getParam(
                'center2',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Findwelfarecenter3',
          path: '/findwelfarecenter3',
          asyncParams: {
            'center3': getDoc(['centerType3'], CenterType3Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Findwelfarecenter3Widget(
              center3: params.getParam(
                'center3',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Findwelfarecenter4',
          path: '/findwelfarecenter4',
          asyncParams: {
            'center4': getDoc(['centerType4'], CenterType4Record.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Findwelfarecenter4Widget(
              center4: params.getParam(
                'center4',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'MyPage',
          path: '/myPage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'MyPage')
              : const MyPageWidget(),
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
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
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
