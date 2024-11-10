import 'package:flutter/material.dart';
import '../../core/utils/route_utils.dart';
import '../../core/constants/strings.dart';
import '../../core/constants/colors.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: primaryColor,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteUtils.generateRoute,
    );
  }
}
