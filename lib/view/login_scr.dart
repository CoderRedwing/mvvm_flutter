import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/utills/routes/routes_name.dart';
import 'package:mvvm/view/home_scr.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body:  Center(
       child: InkWell(
         onTap: (){
           Navigator.pushNamed(context, RouteName.home);
           //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
         },
           child: Text('Click')),
     ),
   );
  }
}

