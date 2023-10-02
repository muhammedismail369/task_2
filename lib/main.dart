import 'package:flutter/material.dart';
import 'package:task_2/screens/create_test_case_screen.dart';
import 'package:task_2/screens/test_form_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        routes: <GoRoute>[
          GoRoute(
            path: 'createTestCaseScreen',
            builder: (BuildContext context, GoRouterState state) =>
                const CreateTestCaseScreen(),
          )
        ],
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const TestFormScreen(),
      ),
    ],
  );
}
