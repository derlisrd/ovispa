import 'package:flutter/material.dart';
import 'package:ovispaapp/src/screens/screens.dart';
import 'package:ovispaapp/src/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {

  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  Center(
      child: Column(children: [
        const Text('LOG'),
        PrimaryButton(text: 'Salir', onTap: (){ Navigator.pushReplacementNamed(context, LoginScreen.routeName); })
      ],),
    ),);
  }
}