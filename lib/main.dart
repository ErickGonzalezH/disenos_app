import 'package:flutter/material.dart';

import 'package:disenos_app/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //Editar el color de la barra de notificaciones del movil.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(

      //Quitar el banner debug
      debugShowCheckedModeBanner: false,

      title: 'Material App',

      //mostrar screens
      initialRoute: 'HomeScreen',
      theme: ThemeData.dark(),
      routes: {
        'Basic_design': ( _ ) =>  const BasicDesignScreen(),
        'Scroll_design': ( _ ) => const ScrollScreen(),
        'HomeScreen' : ( _ ) =>   const HomeScreen(),
      },
    );
  }
}

