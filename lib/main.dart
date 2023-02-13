import 'package:flutter/material.dart';
import 'package:mvvm/utills/routes/route.dart';
import 'package:mvvm/utills/routes/routes_name.dart';
import 'package:mvvm/view/login_scr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
   debugShowCheckedModeBanner: false,
      initialRoute: RouteName.login,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

