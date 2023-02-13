

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/utills/routes/routes_name.dart';
import 'package:mvvm/view/home_scr.dart';
import 'package:mvvm/view/login_scr.dart';

class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.home:
        return MaterialPageRoute(builder: (BuildContext context)=> const HomeScreen());

      case RouteName.login:
        return MaterialPageRoute(builder: (BuildContext context)=> const LoginScreen());

      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text('no routes defined'),
            ),
          );
        });
    }
  }
}