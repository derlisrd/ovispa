import 'package:flutter/material.dart';
import 'package:ovispaapp/src/providers/authprovider.dart';
import 'package:ovispaapp/src/screens/auth/login_screen.dart';
import 'package:ovispaapp/src/widgets/widgets.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {

  static const routeName = '/home';

  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
  final authProvider = Provider.of<AuthProvider>(context);

  logout ()async{
    bool salir = await authProvider.logout();
    if(salir){
      if (!context.mounted) return;
        Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
    }
  }


    return  Scaffold(
      appBar: AppBar(),
      body:  Center(
      child: Column(children: [
        const Text('LOG'),
        PrimaryButton(text: 'Salir', onTap: logout)
      ],),
    ),);
  }
}