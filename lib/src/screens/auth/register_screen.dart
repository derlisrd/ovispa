import 'package:flutter/material.dart';
import 'package:ovispaapp/src/widgets/widgets.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final passConfirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  SafeArea(
        child: SingleChildScrollView(child: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.wallet, size: 48,),
              const MontseText(texto: 'Registro',style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold)),
              const MontseText(texto: 'Usa tus datos para registrarte',style: TextStyle(fontSize: 14)),
              const SizedBox(height: 20,),
              InputText(controller: nameController , hintText: "Nombre"),
              InputText(controller: emailController , hintText: "Email"),
              InputText(controller: passController , hintText: "Contraseña",obscureText: true,),
              InputText(controller: passConfirmController , hintText: "Repetir contraseña",obscureText: true),
              PrimaryButton(text: "REGISTRAR", onTap:  (){}),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: ()=> Navigator.pop(context),
                child: const MontseText(texto: 'Ya tengo una cuenta. Ingresar.'),
              )
            ],
          ),
        )
      ), 
      ),
    );
  }
}