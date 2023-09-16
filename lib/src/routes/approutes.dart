import 'package:flutter/material.dart';
import 'package:ovispaapp/src/screens/home/homescreen.dart';
import '../screens/screens.dart';

class AppRoutes {
  
  Map<String,WidgetBuilder> rutas (BuildContext context){

    return {
      LoginScreen.routeName :(context) => const LoginScreen(),
      RegisterScreen.routeName:(context) => const RegisterScreen(),
      HomeScreen.routeName:(context) => const HomeScreen()
    };
  }  
}