import 'dart:ui';

import 'package:flutter/material.dart';


class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {

    //table funciona como una coleccion de rows
    return Table(
      children: [
        //primera fila
        TableRow(
          children: [
            //botonera central
            const _SingleCard( color: Colors.blue, icon: Icons.apps_outlined , text: 'General' ),
            _SingleCard( color: Colors.purple.shade300, icon: Icons.bus_alert , text: 'Transport' ),
          ],
        ),

        //Segunda fila
        TableRow(
          children: [
            //botonera central
            _SingleCard( color: Colors.pink.shade300, icon: Icons.shopify_sharp , text: 'Shopping' ),
            _SingleCard( color: Colors.orange.shade200, icon: Icons.document_scanner , text: 'Bills' ),
          ],
        ),

        //Tercera fila
        TableRow(
          children: [
            //botonera central
            _SingleCard( color: Colors.blue.shade800, icon: Icons.movie_filter , text: 'Entertainment' ),
            const _SingleCard( color: Colors.green, icon: Icons.local_grocery_store , text: 'Grocery' ),
          ],
        ),

        //Cuarta fila
        TableRow(
          children: [
            //botonera central
            _SingleCard( color: Colors.grey.shade600, icon: Icons.view_compact_alt_outlined , text: 'Electronics' ),
            _SingleCard( color: Colors.red.shade200, icon: Icons.games_outlined , text: 'Games' ),
          ],
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({super.key, 
    required this.icon, 
    required this.color, 
    required this.text
  });

  @override
  Widget build(BuildContext context) {

    return _CardBackground( 
      child: Column(
              //Alinear texto e icon al centro.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon( icon, size: 30, color: Colors.white ),
                ),
        
                //Añadir espacio entre el icon y el texto.
                const SizedBox( height: 10),
        
                Text( text , style: TextStyle( color: color, fontSize: 18 ),)
              ],
            )
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BackdropFilter(
          //aplicar blur
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5 ), 
          
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(52, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(15)
            ),

            child: child,

          ),
        ),
      ),
    );
  }
}