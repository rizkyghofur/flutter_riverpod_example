import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/bottom_navbar.dart';

void main() {
  // This is the main entry point for the application.
  // The `runApp` function takes a widget and makes it the root of the
  // widget tree.
  // The `ProviderScope` widget is the root of the Riverpod widget tree.
  // It is used to provide the Riverpod providers to the entire app.
  // The `MainApp` widget is the root of the app's widget tree.
  // It is a `ConsumerWidget` that uses the `ref` parameter to access the
  // Riverpod providers.
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(context, ref) {
    return const MaterialApp(
      home: Scaffold(
        body: BottomNavBar(),
      ),
    );
  }
}
