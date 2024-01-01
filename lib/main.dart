import 'package:flutter/material.dart';
import 'package:test_arc/locator.dart';
import 'package:test_arc/ui/route_navigation.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Architecture MVVM Provider',
      initialRoute: RouteNavigation.profiles,
      onGenerateRoute: RouteNavigation.generateRoute,
    );
  }
}
