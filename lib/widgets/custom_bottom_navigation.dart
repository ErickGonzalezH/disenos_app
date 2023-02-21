import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //Quitar texto.
      showSelectedLabels: false,
      showUnselectedLabels: false,

      //Seleccionando color de la botonera.
      selectedItemColor: Colors.pink,

      //color de fondo del appbar inferior
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),

      //Mostrar animacion
      currentIndex: 0,

      items: const [

        //Botonera de la parte inferior.
        //Calendario
        BottomNavigationBarItem(
          icon: Icon (Icons.calendar_today_outlined),
          label: 'Calendario',
        ),

        //Gráfica
        BottomNavigationBarItem(
          icon: Icon (Icons.pie_chart_outline),
          label: 'Gráfica',
        ),

        //Usuario
        BottomNavigationBarItem(
          icon: Icon (Icons.supervised_user_circle_outlined),
          label: 'Usuario',
        )

      ],
    );
  }
}