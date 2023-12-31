import 'package:flutter/material.dart';
import 'package:ovispaapp/src/screens/common/loadingscreen.dart';
import 'package:ovispaapp/src/screens/home/homescreen.dart';
import 'package:provider/provider.dart';
import 'package:ovispaapp/src/providers/authprovider.dart';
import 'package:ovispaapp/src/screens/auth/register_screen.dart';
import 'package:ovispaapp/src/widgets/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {

  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool _isLoading = true;


  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }
 
 Future<void> _checkAuthStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    
    if(token!=null){
      if (!context.mounted) return;
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    }
    setState(() { _isLoading = false;});
  }

  @override
  Widget build(BuildContext context) {
  final authProvider = Provider.of<AuthProvider>(context);

  Future<void> trylogin() async{
    await authProvider.login(emailController.text, passController.text);
    if (authProvider.isAuth){
      if (!context.mounted) return;
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    }
  }


  



    return _isLoading
        ? const LoadingScreen() : 
      Scaffold(
      body: SafeArea(child: 
        SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 64),
                const Icon(Icons.wallet, size: 48),
               const MontseText(texto: 'HOLA!',style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold)),
               const MontseText(texto: 'Ingresa tus credenciales!',style: TextStyle(fontSize: 14)),
                const SizedBox(height: 30,),
                InputText(controller: emailController, hintText: 'Email'),
                InputText(controller: passController, hintText: 'Contraseña', obscureText: true,),
                const SizedBox(height: 20,),
                 PrimaryButton(text: "Ingresar", onTap: ()=>trylogin()),
                 SecondaryButton(text: "Registrarme", onTap: () {
                  Navigator.pushNamed(context,RegisterScreen.routeName);
                },)
              ],
            ),
          ),
        )
      ),
    );
  }
}