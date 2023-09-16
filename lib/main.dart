import 'package:flutter/material.dart';
import 'package:ovispaapp/src/providers/authprovider.dart';
import 'package:ovispaapp/src/routes/approutes.dart';
import 'package:provider/provider.dart';

void main()=>runApp(const AppState());

class AppState extends StatelessWidget{

  
  const AppState({super.key});
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context)=> AuthProvider())
    ],
     child:const MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ovispa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black45),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: AppRoutes().rutas(context),
    );
  }
}
