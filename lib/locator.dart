import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:paykitaz/flavors.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // Logger
  final GlobalKey<NavigatorState> navigatorKey1 = GlobalKey<NavigatorState>();
  Alice alice = Alice(
    /// change this code to show alice in production app
    // ignore: unrelated_type_equality_checks
    showNotification: F().condition != Flavor.PROD ? true : false,
    // ignore: unrelated_type_equality_checks
    showShareButton: F().condition != Flavor.PROD ? true : false,
    // ignore: unrelated_type_equality_checks
    showInspectorOnShake: F().condition != Flavor.PROD ? true : false,
    darkTheme: false,
    maxCallsCount: 1000,
    navigatorKey: navigatorKey1,
  );
  locator.registerLazySingleton<Alice>(() => alice);

  // repository

  // data source

  // bloc

  // usecase

  // helper

  // helper
}
