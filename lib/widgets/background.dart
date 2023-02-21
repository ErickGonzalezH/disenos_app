import 'package:flutter/material.dart';

import 'dart:math';

class Background extends StatelessWidget {
  const Background({super.key});

  //variable del fondo con gradiente
  final boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          //Acomodarlo para que inicie de un color en especifico
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //punto de quiebre del gradiente
          stops: [0.2,0.8],
          //colores del gradiente
          colors: [
            Color(0xff2E305F),
            Color(0xff202333)
          ]
        )
      );

  @override
  Widget build(BuildContext context) {
    
    //Stack sirve para colocar widgets encima de otros
    return Stack(
      children: [
        //gradiente morado
        Container( decoration: boxDecoration ),

        //Caja rosada
        const Positioned(
          top: -80,
          left: -10,
          child: _PinkBox()
        ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {

    //transform.rotate es para rotar el pinkbox.
    return Transform.rotate(
      angle: -pi / 5.0,

      child: Container(
        width: 320,
        height: 320,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          //Añadir el gradiente al color del PinkBox
          gradient: const LinearGradient(
            //Colores del gradiente pinkbox
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 142, 172, 1)
            ]
          )
        ),
      ),
    );
  }
}