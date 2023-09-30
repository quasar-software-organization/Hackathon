import 'package:aidcode/core/theme/light.dart';
import 'package:aidcode/data/datasources/firestore_service.dart';
import 'package:aidcode/data/model/non_profit.dart';
import 'package:aidcode/injection_container.dart';
import 'package:aidcode/presentation/bloc/non_profit_bloc/non_profit_bloc.dart';
import 'package:aidcode/presentation/bloc/project_bloc/project_bloc.dart';
import 'package:aidcode/presentation/bloc/volunteer_bloc/volunteer_bloc.dart';
import 'package:aidcode/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'firebase_options.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await configureDependencies();

  FirestoreService fs = FirestoreService(FirebaseFirestore.instance);

  FlutterNativeSplash.remove();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ProjectBloc>()..add(const ProjectEvent.init()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<VolunteerBloc>()..add(const VolunteerEvent.init()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<NonProfitBloc>()..add(const NonProfitEvent.init()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AidCode',
      debugShowCheckedModeBanner: false,
      theme: light(context),
      routerConfig: AppRoute.routes,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}
