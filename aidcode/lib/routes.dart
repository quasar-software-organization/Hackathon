import 'package:aidcode/data/model/non_profit.dart';
import 'package:aidcode/presentation/screens/about/about_screen.dart';
import 'package:aidcode/presentation/screens/nonprofit/nonprofits.dart';
import 'package:aidcode/presentation/screens/project_details/project_details.dart';
import 'package:aidcode/presentation/screens/projects/project_form.dart';
import 'package:aidcode/presentation/screens/projects/projects.dart';
import 'package:aidcode/presentation/screens/volunter/volunteer.dart';
import 'package:aidcode/presentation/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

enum MyRoutes {
  welcome,
  projects,
  projectDetail,
  volunteer,
  nonprofits,
  projectForm,
  aboutUs
}

class AppRoute {
  static GoRouter get routes => _routes;

  static GlobalKey<NavigatorState> get rootNavigatorKey => _rootNavigatorKey;

  static GlobalKey<NavigatorState> get shellNavigatorKey => _shellNavigatorKey;

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static const String _welcome = '/welcome';
  static const String _projects = 'projects';
  static const String _volunteer = 'volunteer';
  static const String _nonprofits = 'nonprofits';
  static const String _projectForm = 'project-form';
  static const String _aboutUs = 'about-us';

  static final _routes = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: _welcome,
    observers: [
      HeroController(),
    ],
    routes: [
      ResponsiveRoute(
        path: _welcome,
        name: MyRoutes.welcome.name,
        child: (context, state) => const WelcomeScreen(),
        routes: [
          ResponsiveRoute(
            path: _projects,
            name: MyRoutes.projects.name,
            child: (context, state) {
              return const ProjectsScreen();
            },
            routes: [
              ResponsiveRoute(
                path: "detail/:id",
                transitionDuration: const Duration(milliseconds: 400),
                useTransition: true,
                name: MyRoutes.projectDetail.name,
                child: (context, state) {
                  final id = state.pathParameters['id']!;
                  return ProjectDetails(id: id);
                },
              ),
              ResponsiveRoute(
                path: _volunteer,
                name: MyRoutes.volunteer.name,
                child: (context, state) {
                  return const VolunteerScreen();
                },
              ),
            ],
          ),
          ResponsiveRoute(
            path: _nonprofits,
            name: MyRoutes.nonprofits.name,
            child: (context, state) {
              return const NonProfitsScreen();
            },
            routes: [
              ResponsiveRoute(
                path: _projectForm,
                name: MyRoutes.projectForm.name,
                child: (context, state) {
                  final np = state.extra as NonProfit;

                  return ProjectFormScreen(nonProfit: np);
                },
              ),
            ],
          ),
          ResponsiveRoute(
            path: _aboutUs,
            name: MyRoutes.aboutUs.name,
            child: (context, state) {
              return const AboutUsScreen();
            },
          ),
        ],
      ),
    ],
  );
}

class ResponsiveRoute extends GoRoute {
  final bool useTransition;
  final Duration transitionDuration;
  final GoRouterWidgetBuilder? child;

  ResponsiveRoute({
    required this.child,
    required String path,
    String? name,
    GlobalKey<NavigatorState>? parentNavigatorKey,
    List<GoRoute> routes = const [],
    this.transitionDuration = const Duration(milliseconds: 250),
    this.useTransition = false,
  }) : super(
          name: name,
          path: path,
          routes: routes,
          parentNavigatorKey: parentNavigatorKey,
          pageBuilder: (context, state) {
            final page = MaxWidthBox(
              maxWidth: double.maxFinite,
              background: Container(color: const Color(0xFFF5F5F5)),
              child: ResponsiveScaledBox(
                width: ResponsiveValue<double>(context, conditionalValues: [
                  Condition.equals(name: MOBILE, value: 450),
                  Condition.between(start: 800, end: 1100, value: 800),
                  Condition.between(start: 1000, end: 1200, value: 1000),
                ]).value,
                child: child!(context, state),
              ),
            );

            if (useTransition) {
              return CustomTransitionPage(
                key: state.pageKey,
                transitionDuration: transitionDuration,
                child: page,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: CurveTween(curve: Curves.easeInOutCirc)
                        .animate(animation),
                    child: child,
                  );
                },
              );
            } else {
              return NoTransitionPage(child: page);
            }
          },
        );
}
