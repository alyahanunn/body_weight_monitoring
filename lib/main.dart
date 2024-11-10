// lib/main.dart
import 'package:body_weight_monitoring_apk/features/home/ActivityScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/home/HomeController.dart';
import 'features/home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Body Weight Monitoring',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/activity': (context) => const ActivityScreen(),
        },
      ),
    );
  }
}
